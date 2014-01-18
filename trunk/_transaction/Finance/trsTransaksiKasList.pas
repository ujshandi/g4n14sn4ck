unit trsTransaksiKasList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, AdvEdit, UTransaction,
  Grids, BaseGrid, AdvGrid, WinXP, SUIImagePanel, Math, DateUtils, strutils,
  frmDockForm;

type
  TfrmTrsTransaksiKasList = class(TDockForm)
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
    Label4: TLabel;
    cmbReport: TComboBox;
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
  private
    purpose : integer;
    procedure InitForm;
    procedure SetFilter;
    procedure InitFilter;
    procedure LoadData;
  public
    procedure Execute(Apurpose:integer); override;
  end;

var
  frmTrsTransaksiKasList: TfrmTrsTransaksiKasList;

implementation

uses Subroutines, MainMenu,
  MstCodeList, MySQLConnector, uMysqlClient, UConst, UMaster,
  LookupData, MoneyTransaction, UConstTool, trsPembayaranListPrint,
  PengeluaranKas;

const
  colNo    = 0;
  colID    = 1; //6

{$R *.dfm}

{ TfrmTrsItemShipmentList }


procedure TfrmTrsTransaksiKasList.Execute(Apurpose: integer);
begin
  inherited;
  purpose := Apurpose;
  ToolBar1.ParentColor:= false;
  ToolBar1.Color:= clWhite;
  InitForm;
  Run(Self);
end;

procedure TfrmTrsTransaksiKasList.InitFilter;
begin
  GlobalFilter.Reset;
  GlobalPeriode.Reset;
  cmbReport.Items.Clear;
  cmbReport.Items.Add('Rekap Transaksi');


  cmbReport.ItemIndex := 0;
  cmbOpr.ItemIndex:= 3;
  cmbOprChange(nil);
  cmbReport.Visible := False;
  Label4.Visible := False;
  dtpAwal.Date:= StartOfTheMonth(ServerNow);
  dtpAkhir.Date:= ServerNow;

end;

procedure TfrmTrsTransaksiKasList.InitForm;
begin
  InitFilter;
//  Label3.Caption:= IfThen(purpose = TRANS_TYPE_ORDER, 'Tgl Kirim :', 'Tgl Expr :');

end;


procedure TfrmTrsTransaksiKasList.LoadData;
var i,j, col_idx: integer; header: TMysql_FieldDef; data: TMysqlResult;
totalUang : double;
begin
  try
    StartProgress;
    SetFilter;
    grid.Clear;
    data:= TTrsMoneyTransaction.LoadRekapKas;

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

        if (j = 3) then begin
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

procedure TfrmTrsTransaksiKasList.SetFilter;
begin
  GlobalPeriode.Reset;
  GlobalPeriode.setPeriode(cmbOpr.ItemIndex, dtpAwal.Date, dtpAkhir.Date);
  GlobalFilter.Reset;
    GlobalFilter.SeriesID:= purpose;
end;

procedure TfrmTrsTransaksiKasList.tbtNewClick(Sender: TObject);
var NewTransaction: TDockForm;
begin
if not TSystemAccess.isCan(CAN_ADD,AktiveControl.Tag) then exit;
 // if purpose in [TRANS_TYPE_PENGELUARAN_KAS] then
   // frmPengeluaranKas.Execute(0)
  //else  begin
  NewTransaction:= ShowForm(Purpose);
  NewTransaction.Execute(Purpose, 0);
  //end;

//
end;

procedure TfrmTrsTransaksiKasList.tbtDetailClick(Sender: TObject);
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

procedure TfrmTrsTransaksiKasList.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if purpose in [TRANS_TYPE_PENGELUARAN_KAS] then begin
  //  if cmbReport.ItemIndex = 0 then begin
         if ACol in[4] then HAlign:= taRightJustify;
    //end
    //else begin
    //end;
  end

end;

procedure TfrmTrsTransaksiKasList.gridDblClickCell(Sender: TObject;
  ARow, ACol: Integer);
begin
  tbtDetail.Click
end;

procedure TfrmTrsTransaksiKasList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //if ShipmentList <> nil then ShipmentList.Free;
  //ShipmentList:= nil;
end;

procedure TfrmTrsTransaksiKasList.tbtRefreshClick(Sender: TObject);
begin
  if cmbReport.ItemIndex = 1 then
//     LoadDataTabunganNasabah
  else
     LoadData

end;

procedure TfrmTrsTransaksiKasList.ToolButton5Click(Sender: TObject);
begin
  InitFilter
end;

procedure TfrmTrsTransaksiKasList.cmbOprChange(Sender: TObject);
begin
  dtpAkhir.Enabled:= cmbOpr.ItemIndex = 3;
end;

procedure TfrmTrsTransaksiKasList.tbtPrintClick(Sender: TObject);
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


end.
