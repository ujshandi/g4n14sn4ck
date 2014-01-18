unit trsPembayaranList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, AdvEdit, UTransaction,
  Grids, BaseGrid, AdvGrid, WinXP, SUIImagePanel, Math, DateUtils, strutils,
  frmDockForm;

type
  TfrmTrsPembayaranList = class(TDockForm)
    ToolBar1: TToolBar;
    tbtNew: TToolButton;
    tbtDetail: TToolButton;
    ToolButton4: TToolButton;
    tbtRefresh: TToolButton;
    ToolButton2: TToolButton;
    tbtPrint: TToolButton;
    WinXP1: TWinXP;
    ToolButton5: TToolButton;
    suiPanel1: TsuiPanel;
    dtpAkhir: TDateTimePicker;
    dtpAwal: TDateTimePicker;
    cmbOpr: TComboBox;
    Label2: TLabel;
    Label1: TLabel;
    suiPanel2: TsuiPanel;
    grid: TAdvStringGrid;
    lblJenisTransaksi: TLabel;
    cmbJenis: TComboBox;
    Label4: TLabel;
    cmbReport: TComboBox;
    txtCust: TAdvEdit;
    btnCust: TButton;
    Label6: TLabel;
    cmbStatus: TComboBox;
    procedure tbtNewClick(Sender: TObject);
    procedure tbtDetailClick(Sender: TObject);
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gridDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtRefreshClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure cmbOprChange(Sender: TObject);
    procedure tbtPrintClick(Sender: TObject);
    procedure btnCustClick(Sender: TObject);
    procedure cmbStatusChange(Sender: TObject);
  private
    purpose : integer;
    procedure InitForm;
    procedure SetFilter;
    procedure InitFilter;
    procedure LoadData;
     procedure LoadDataUtang;
    procedure LoadDataTabunganNasabah;
  public
    procedure Execute(Apurpose:integer); override;
  end;

var
  frmTrsPembayaranList: TfrmTrsPembayaranList;

implementation

uses Subroutines, MainMenu,
  MstCodeList, MySQLConnector, uMysqlClient, UConst, UMaster,
  LookupData, MoneyTransaction, UConstTool, trsPembayaranListPrint;

const
  colNo    = 0;
  colID    = 1; //6

{$R *.dfm}

{ TfrmTrsItemShipmentList }


procedure TfrmTrsPembayaranList.Execute(Apurpose: integer);
begin
  inherited;
  purpose := Apurpose;
  ToolBar1.ParentColor:= false;
  ToolBar1.Color:= clWhite;
  cmbJenis.ItemIndex:= 0;
  InitForm;
  Run(Self);
end;

procedure TfrmTrsPembayaranList.InitFilter;
begin
  GlobalFilter.Reset;
  GlobalPeriode.Reset;
  txtCust.Clear;
  txtCust.Tag :=0;
  cmbJenis.Visible := false;
  lblJenisTransaksi.Visible := False;
  cmbReport.Items.Clear;
  cmbReport.Items.Add('Rekap Transaksi');
  if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then begin
{  cmbJenis.Items.clear;
    cmbJenis.Items.Add('Semua');
    cmbJenis.Items.Add('Setoran');
    cmbJenis.Items.Add('Pengambilan');}
    cmbReport.Items.Add('Tabungan per Nasabah');
    cmbJenis.Visible := true;
    cmbJenis.ItemIndex := 0;
    txtCust.LabelCaption :=  'Nasabah';
    lblJenisTransaksi.Visible := True;
    txtCust.EmptyText := 'Semua Nasabah';
  end
  else if purpose = TRANS_TYPE_PEMBAYARAN then begin
    txtCust.LabelCaption :=  'Supplier';
    txtCust.EmptyText := 'Semua Supplier';
    cmbReport.Items.Add('Utang per Supplier');
  end
  else if purpose = TRANS_TYPE_PIUTANG then begin
    txtCust.LabelCaption :=  'Customer';
    txtCust.EmptyText := 'Semua Customer';
    cmbReport.Items.Add('Piutang per Customer');
  end;


  cmbReport.ItemIndex := 0;
  cmbOpr.ItemIndex:= 3;
  cmbOprChange(nil);
  cmbStatus.ItemIndex := 0;
  cmbStatusChange(nil);
  dtpAwal.Date:= StartOfTheMonth(ServerNow);
  dtpAkhir.Date:= ServerNow;

end;

procedure TfrmTrsPembayaranList.InitForm;
begin
  InitFilter;
//  Label3.Caption:= IfThen(purpose = TRANS_TYPE_ORDER, 'Tgl Kirim :', 'Tgl Expr :');

end;


procedure TfrmTrsPembayaranList.LoadData;
var i,j, col_idx: integer; header: TMysql_FieldDef; data: TMysqlResult;
totalUang : double;
begin
  try
    StartProgress;
    SetFilter;
    grid.Clear;
    data:= TTrsMoneyTransaction.LoadRekapTabungan;

    grid.RowCount:= IfThen(data.RecordCount > 0, data.RecordCount + 2, 3);
    grid.ColCount:= data.FieldsCount+2;
    grid.FixedRows:= 1;
    grid.FloatingFooter.Visible:= True;
    for i:= 0 to data.FieldsCount-1 do begin
      header:= data.FieldDef(i)^;
      grid.Cells[i+1, 0]:= header.Name;
    end;

    col_idx:= 5;
    data.First;
    totalUang := 0;
    for i:= 1 to data.RecordCount do begin
    //0money_trans_id, 1t.trans_num , 2t.trans_date ,3relation_name, 4t.Total,5t.notes
      for j:= 0 to data.FieldsCount-1 do

        if (j = 4) then begin
          totalUang := totalUang + (BufferToFloat(data.FieldValue(j))*  IfThen(BufferToString(data.FieldValue(j+2))='Pengambilan',-1,1));
          grid.Cells[j+1,i]:= FloatToStrFmt(BufferToFloat(data.FieldValue(j)));
        end
        else if (j = 2) then grid.Dates[j+1,i]:= BufferToDateTime(data.FieldValue(j))
        else grid.Cells[j+1,i]:= data.FieldValue(j);
      data.MoveNext;
    end;
    data.destroy;

  //  for i:= col_idx to grid.ColCount-2 do
     grid.Cells[5, grid.RowCount-1]:= FloatToStrFmt(totalUang);//grid.ColumnSum(5, 1, grid.RowCount-2));

    grid.AutoNumberCol(colNo);  
    grid.AutoSizeColumns(TRUE, 4);
    grid.ColWidths[0]:= 18;
    grid.ColWidths[1]:= 0;

  finally
    EndProgress;
  end;
end;

procedure TfrmTrsPembayaranList.SetFilter;
begin
  GlobalPeriode.Reset;
  GlobalPeriode.setPeriode(cmbOpr.ItemIndex, dtpAwal.Date, dtpAkhir.Date);
  GlobalFilter.Reset;
   if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then begin
      if cmbJenis.ItemIndex > 0 then
        GlobalFilter.SeriesID := IfThen(cmbJenis.ItemIndex=1,TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT);
   end
   else   begin
    GlobalFilter.SeriesID:= purpose;
    end;
  GlobalFilter.RelasiID := txtCust.Tag;
   GlobalFilter.StatusID:= cmbStatus.Tag;
//  GlobalFilter.TipeID  := IntToStr(cmbJensi.Tag);
end;

procedure TfrmTrsPembayaranList.tbtNewClick(Sender: TObject);
var NewTransaction: TDockForm;
begin
if not TSystemAccess.isCan(CAN_ADD,AktiveControl.Tag) then exit;
  if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then
    frmMoneyTransaction.Execute(0)
  else  begin
  NewTransaction:= ShowForm(Purpose);
  NewTransaction.Execute(Purpose, 0);
  end;

//
end;

procedure TfrmTrsPembayaranList.tbtDetailClick(Sender: TObject);
var NewTransaction: TDockForm;
begin
  if not TSystemAccess.isCan(CAN_VIEW,AktiveControl.Tag) then exit;
   if grid.Ints[colId, grid.Row] = 0 then exit;

  if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then
    frmMoneyTransaction.Execute(StrToIntDef(grid.Cells[colId, grid.Row],0))
  else begin
      NewTransaction:= ShowForm(Purpose);
      NewTransaction.Execute(Purpose, grid.Ints[colId, grid.Row]);
  end;
end;

procedure TfrmTrsPembayaranList.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then begin
    if cmbReport.ItemIndex = 0 then begin
         if ACol in[5] then HAlign:= taRightJustify;
    end
    else begin
        if ACol in[5,6,7] then HAlign:= taRightJustify;
    end;
  end
  else if purpose = TRANS_TYPE_PEMBAYARAN then begin
    if cmbReport.ItemIndex = 0 then begin
         if ACol >4 then HAlign:= taRightJustify;
    end
    else begin
        if ACol in[5,6,7] then HAlign:= taRightJustify;
    end;
  end
   else if purpose = TRANS_TYPE_PIUTANG then begin
    if cmbReport.ItemIndex = 0 then begin
         if ACol >4 then HAlign:= taRightJustify;
    end
    else begin
        if ACol in[5,6,7] then HAlign:= taRightJustify;
    end;
  end;
end;

procedure TfrmTrsPembayaranList.gridDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  tbtDetail.Click
end;

procedure TfrmTrsPembayaranList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //if ShipmentList <> nil then ShipmentList.Free;
  //ShipmentList:= nil;
end;

procedure TfrmTrsPembayaranList.tbtRefreshClick(Sender: TObject);
begin
 if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then begin
  if cmbReport.ItemIndex = 1 then
     LoadDataTabunganNasabah
  else
     LoadData
 end
 else if purpose = TRANS_TYPE_PEMBAYARAN then begin
     if cmbReport.ItemIndex = 1 then
      //
     else
        LoadDataUtang;
 end
 else if purpose = TRANS_TYPE_PIUTANG then begin
     if cmbReport.ItemIndex = 1 then
      //
     else
        LoadDataUtang;
 end

end;

procedure TfrmTrsPembayaranList.ToolButton5Click(Sender: TObject);
begin
  InitFilter
end;

procedure TfrmTrsPembayaranList.cmbOprChange(Sender: TObject);
begin
  dtpAkhir.Enabled:= cmbOpr.ItemIndex = 3;
end;

procedure TfrmTrsPembayaranList.tbtPrintClick(Sender: TObject);
begin
  if MustRegister then exit;
  if TSystemAccess.isCan(CAN_PRINT,AktiveControl.Tag) then
    if GlobalSystemConfig.localSetting.PrinterAdm <> '' then begin
     if (getDefaultPrinter <> GlobalSystemConfig.localSetting.PrinterAdm) then
         setDefaultPrinter(GlobalSystemConfig.localSetting.PrinterAdm);
  end;

  try
    Application.CreateForm(TqrpPembayaranListPrint, qrpPembayaranListPrint);
    qrpPembayaranListPrint.Executes(grid);
  finally
    qrpPembayaranListPrint.Destroy;
  end;

end;

procedure TfrmTrsPembayaranList.btnCustClick(Sender: TObject);
var id: integer; tipe:string;
begin
  if purpose in [TRANS_TYPE_DANA_INPUT,TRANS_TYPE_DANA_OUTPUT] then
     tipe  := 'NASABAH'
  else if(purpose = TRANS_TYPE_PEMBAYARAN) then
    tipe := 'SPL'
  else
    tipe := 'CUST';
  id:= frmLookup.Execute(tipe);
  if Id > 0 then begin
    txtCust.Text:= TMstRelation.GetName(id);
    txtCust.Tag:= id;
  end;

end;

procedure TfrmTrsPembayaranList.LoadDataTabunganNasabah;
var i,j, col_idx: integer; header: TMysql_FieldDef; data: TMysqlResult;
saldo : Double;
begin
  if txtCust.Tag = 0 then begin
        Alert('Nasabah belum dipilih');
        btnCust.SetFocus;
        Exit;
  end;
  try
    StartProgress;
    SetFilter;
    grid.Clear;
    data:= TTrsMoneyTransaction.LoadRekapTabunganNasabah;

    grid.RowCount:= IfThen(data.RecordCount > 0, data.RecordCount + 2, 3);
    grid.ColCount:= data.FieldsCount+2;
    grid.FixedRows:= 1;
    grid.FloatingFooter.Visible:= True;
    for i:= 0 to data.FieldsCount-1 do begin
      header:= data.FieldDef(i)^;
      grid.Cells[i+1, 0]:= header.Name;
    end;

    col_idx:= 5;
    data.First;
    saldo := 0;
    for i:= 1 to data.RecordCount do begin
    //0money_trans_id, 1t.trans_num , 2t.trans_date ,3relation_name, 4t.Total,5t.notes
      for j:= 0 to data.FieldsCount-1 do
        if (j in [4,5,6]) then begin
          if (j=6) then begin
            saldo := saldo + BufferToFloat(data.FieldValue(j-2))-BufferToFloat(data.FieldValue(j-1));
            grid.Cells[j+1,i]:= FloatToStrFmt(saldo);
          end
          else
            grid.Cells[j+1,i]:= FloatToStrFmt(BufferToFloat(data.FieldValue(j)));
        end
        else if (j = 2) then grid.Dates[j+1,i]:= BufferToDateTime(data.FieldValue(j))
        else grid.Cells[j+1,i]:= data.FieldValue(j);
      data.MoveNext;
    end;
    data.destroy;

  //  for i:= col_idx to grid.ColCount-2 do
 //    grid.Cells[5, grid.RowCount-1]:= FloatToStrFmt(grid.ColumnSum(5, 1, grid.RowCount-2));

    grid.AutoNumberCol(colNo);  
    grid.AutoSizeColumns(TRUE, 4);
    grid.ColWidths[0]:= 18;
    grid.ColWidths[1]:= 0;

  finally
    EndProgress;
  end;


end;

procedure TfrmTrsPembayaranList.LoadDataUtang;
var i,j, col_idx: integer; header: TMysql_FieldDef; data: TMysqlResult;
totalUang : double;
begin
  try
    StartProgress;
    SetFilter;
    grid.Clear;
    data:= TTrsPayment.LoadRekap;

    grid.RowCount:= IfThen(data.RecordCount > 0, data.RecordCount + 2, 3);
    grid.ColCount:= data.FieldsCount+2;
    grid.FixedRows:= 1;
    grid.FloatingFooter.Visible:= True;
    for i:= 0 to data.FieldsCount-1 do begin
      header:= data.FieldDef(i)^;
      grid.Cells[i+1, 0]:= header.Name;
    end;

    col_idx:= 5;
    data.First;
    totalUang := 0;
    for i:= 1 to data.RecordCount do begin
    //0money_trans_id, 1t.trans_num , 2t.trans_date ,3relation_name, 4t.Total,5t.notes
      for j:= 0 to data.FieldsCount-1 do

        if (j > 3) then begin
          totalUang := totalUang + (BufferToFloat(data.FieldValue(j))*  IfThen(BufferToString(data.FieldValue(j+2))='Pengambilan',-1,1));
          grid.Cells[j+1,i]:= FloatToStrFmt(BufferToFloat(data.FieldValue(j)));
        end
        else if (j = 2) then grid.Dates[j+1,i]:= BufferToDateTime(data.FieldValue(j))
        else grid.Cells[j+1,i]:= data.FieldValue(j);
      data.MoveNext;
    end;
    data.destroy;

  //  for i:= col_idx to grid.ColCount-2 do
     grid.Cells[5, grid.RowCount-1]:= FloatToStrFmt(grid.ColumnSum(5, 1, grid.RowCount-2));
     grid.Cells[6, grid.RowCount-1]:= FloatToStrFmt(grid.ColumnSum(6, 1, grid.RowCount-2));
     grid.Cells[7, grid.RowCount-1]:= FloatToStrFmt(grid.ColumnSum(7, 1, grid.RowCount-2));
     grid.Cells[8, grid.RowCount-1]:= FloatToStrFmt(grid.ColumnSum(8, 1, grid.RowCount-2));

    grid.AutoNumberCol(colNo);
    grid.AutoSizeColumns(TRUE, 4);
    grid.ColWidths[0]:= 18;
    grid.ColWidths[1]:= 0;

  finally
    EndProgress;
  end;

end;

procedure TfrmTrsPembayaranList.cmbStatusChange(Sender: TObject);
begin
  case cmbStatus.ItemIndex of
    0: cmbStatus.Tag:= -1;
    1: cmbStatus.Tag:= 0;
    2: cmbStatus.Tag:= 1;
  end;  

end;

end.
