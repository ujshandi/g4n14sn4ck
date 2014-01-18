unit MoneyTransaction;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, StdCtrls, AdvEdit, Grids, BaseGrid, AdvGrid,StrUtils,Math,
  ExtCtrls, SUIImagePanel,UPetshop,UTransaction;

type
  TfrmMoneyTransaction = class(TForm)
    ToolBar1: TToolBar;
    tbtNew: TToolButton;
    tbtSave: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    suiPanel1: TsuiPanel;
    lblTransaksi: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    dtpTransaction: TDateTimePicker;
    txtNote: TMemo;
    txtSubtotal: TAdvEdit;
    rgTipe: TRadioGroup;
    txtSpec: TAdvEdit;
    btnSpec: TButton;
    txtAmount: TAdvEdit;
    procedure tbtNewClick(Sender: TObject);
    procedure rgTipeClick(Sender: TObject);
    procedure gridCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure tbtSaveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSpecClick(Sender: TObject);
    procedure txtAmountValueValidate(Sender: TObject; value: String;
      var IsValid: Boolean);
    procedure txtSpecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Trx : TTrsMoneyTransaction;
    purpose : integer;
    ls: TStringList;
    procedure SeekVendor;
    procedure getVendor(ACode: string; AID: integer);
    procedure InitForm;
    procedure SetDisableEnable;
    function isValid: boolean;
    function isSaved: boolean;
    procedure LoadData;
  public
    { Public declarations }

    procedure Execute(ID: integer); 

  end;

var
  frmMoneyTransaction: TfrmMoneyTransaction;

implementation

uses MainMenu, Subroutines, UConst, DatabaseConnection, MySQLConnector,
  UConstTool, AutoStockLine, uMysqlClient, UMaster, LookupData;

const
  colNo      = 0;
  colAkun = 1;
  colDesc   = 2;
  colAmount  = 3;
  colAkunId = 4;
  colModId = 5;
  colID      = 6;

{$R *.dfm}

{ TfrmMoneyTransaction }



procedure TfrmMoneyTransaction.Execute(ID: integer);
begin
  inherited;
  Trx := TTrsMoneyTransaction.Create();
  ls := TStringList.Create;
  
  
  InitForm;
  lblTransaksi.Tag :=ID;
  if id > 0 then LoadData;
  Run(Self);
end;

procedure TfrmMoneyTransaction.InitForm;
begin

   Trx.Reset;
   lblTransaksi.Caption := Trx.GetNewNumber;
   lblTransaksi.Tag := 0;
   rgTipe.ItemIndex := 0;
   txtSubtotal.Text := '0';
   rgTipeClick(nil);
   txtNote.Clear;
   dtpTransaction.Date:= ServerNow;
      
   Self.Caption := IfThen(purpose=1,'Transaksi Tabungan','Transaksi Tabungan');

end;


function TfrmMoneyTransaction.isSaved: boolean;
var i:integer;
begin
   Trx.Reset;
   Trx.TransDate := dtpTransaction.Date;
   Trx.TransType := purpose;
   Trx.Notes := txtNote.Text;
   Trx.PersonId := txtSpec.Tag;
   Trx.Total := StrFmtToFloatDef(txtAmount.Text,0);
   //2 = tabungan
   Trx.trsDetail.Add(0,lblTransaksi.Tag,2,'',Trx.Total,0);
   if lblTransaksi.Tag=0 then
     Result := Trx.InsertTabungan
   else
     Result := Trx.UpdateTabungan;
end;

function TfrmMoneyTransaction.isValid: boolean;
 function cek_data: boolean;
 var i: integer;
 begin
  Result:= true;

end;

begin
//  if CekInput(Result, dtpDely.Date >= dtpTransaction.Date, 'Tgl kirim < tgl PO.', dtpDely) then
  //  if CekInput(Result, trunc(dtpExpr.Date) >= trunc(dtpTransaction.Date), 'Tgl jth tempo < tgl PO.', dtpExpr) then
       //  CekInput(Result, cek_data, 'Tidak ada detail transaksi untuk disimpan.', grid);
       Result := True;


end;

procedure TfrmMoneyTransaction.SetDisableEnable;
begin

end;

procedure TfrmMoneyTransaction.tbtNewClick(Sender: TObject);
var tag : integer;
begin
  tag := 401;
//  Alert(IntToStr(AktiveControl.Tag));
if not TSystemAccess.isCan(CAN_ADD,tag) then exit;
  InitForm;
end;

procedure TfrmMoneyTransaction.rgTipeClick(Sender: TObject);
begin
  purpose:= IfThen(rgTipe.itemIndex=0,TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT);
  
//  TMstAkun.getList(ls,purpose);
end;

procedure TfrmMoneyTransaction.gridCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
  CanEdit := ACol in [colAKun,colDesc,colAmount];
end;

procedure TfrmMoneyTransaction.tbtSaveClick(Sender: TObject);
begin
  if isValid then
    if isSaved then begin
      Inform(MSG_SUCCESS_SAVING);
      Self.Close;
    end
   // else
   //   Alert(MSG_UNSUCCESS_SAVING);
end;

procedure TfrmMoneyTransaction.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Trx.Free;
  ls.Free;
  //Action := caFree;
end;

procedure TfrmMoneyTransaction.LoadData;
var data :TMysqlResult;i:integer;
begin
  if lblTransaksi.Tag = 0 then exit;
  Trx.MoneyTransID := lblTransaksi.Tag;
  if Trx.SelectInDB then begin
      lblTransaksi.Caption := Trx.TransNum;
      dtpTransaction.Date := Trx.TransDate;
      rgTipe.ItemIndex := Trx.TransType-1;
      rgTipeClick(nil);
      txtNote.Lines.Text := Trx.Notes;
      txtSubtotal.Text := FloatToStrFmtNull(Trx.Total);
      data:= Trx.SelectDetail(Trx.MoneyTransID);
      data.destroy;
  end;
end;

procedure TfrmMoneyTransaction.btnSpecClick(Sender: TObject);
begin
SeekVendor
end;

procedure TfrmMoneyTransaction.getVendor(ACode: string; AID: integer);
var Data: TMstRelation;
begin
  Data:= TMstRelation.Create();
  Data.Reset;
  Data.RelationCode:= ACode;
  Data.RelationId := AID;

  if Data.SelectInDB then begin
    txtSpec.Tag := Data.RelationId;
    txtSpec.Text:= Data.RelationName +' ('+Data.RelationCode+')';
//    txtTerm.IntValue:= Data.DueDate;
    txtSubtotal.Text := FloatToStrFmt(Data.CurrentDebt);
    //LoadItem;
    txtAmount.SetFocus;
//    SavePostState(True);
  end
  else begin
    Inform('Nasabah tidak ditemukan.');
    txtSpec.Clear;
    txtSpec.SetFocus;
  end;
  //txtSubtotal.SetFocus;
  Data.Free;

end;

procedure TfrmMoneyTransaction.SeekVendor;
var id: integer;
begin
  if not btnSpec.Enabled then exit;
  id:= frmLookup.Execute('NASABAH');
  if Id > 0 then getVendor('', id)

end;

procedure TfrmMoneyTransaction.txtAmountValueValidate(Sender: TObject;
  value: String; var IsValid: Boolean);
begin
  AdvEdtFloatFmt(Sender, value);
end;

procedure TfrmMoneyTransaction.txtSpecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 case key of
    VK_F2 : SeekVendor;
    VK_TAB:
      if txtSpec.Modified then
        getVendor(txtSpec.Text,0);
  end;
end;

end.
