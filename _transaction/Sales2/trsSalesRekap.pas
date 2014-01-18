unit trsSalesRekap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, ComCtrls, StdCtrls, ToolWin, ExtCtrls, DateUtils,
  StrUtils, Math,
  UTransaction, SUIImagePanel, Menus;

type
  TfrmTrsSalesRekap = class(TForm)
    MainPanel: TPanel;
    ToolBar1: TToolBar;
    tbtNew: TToolButton;
    tbtDetail: TToolButton;
    ToolButton1: TToolButton;
    tbtRefresh: TToolButton;
    ToolButton5: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    tbtPrint: TToolButton;
    asgList: TAdvStringGrid;
    suiPanel1: TsuiPanel;
    suiPanel2: TsuiPanel;
    Label3: TLabel;
    cmbOpr: TComboBox;
    dtpAwal: TDateTimePicker;
    dtpAkhir: TDateTimePicker;
    suiPanel3: TsuiPanel;
    Label4: TLabel;
    Label1: TLabel;
    cmbJenis: TComboBox;
    cmbStatus: TComboBox;
    suiPanel4: TsuiPanel;
    Label5: TLabel;
    cmbRelasi: TComboBox;
    tbtDelete: TToolButton;
    tblEdit: TToolButton;
    PopupMenu1: TPopupMenu;
    PenjualanCash1: TMenuItem;
    PenjualanCredit1: TMenuItem;
    ReturPenjualan1: TMenuItem;
    ToolButton6: TToolButton;
    pnlTipe: TsuiPanel;
    cmbTipe: TComboBox;
    procedure cmbRelasiChange(Sender: TObject);
    procedure cmbStatusChange(Sender: TObject);
    procedure cmbOprChange(Sender: TObject);
    procedure asgListGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure tbtRefreshClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure asgListDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure tbtDetailClick(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure tbtPrintClick(Sender: TObject);
    procedure tbtNewClick(Sender: TObject);
    procedure tbtDeleteClick(Sender: TObject);
    procedure tblEditClick(Sender: TObject);
    procedure ReturPenjualan1Click(Sender: TObject);
    procedure PenjualanCash1Click(Sender: TObject);
    procedure PenjualanCredit1Click(Sender: TObject);
    procedure cmbTipeSelect(Sender: TObject);
  private
    trsMaster: TTrsMaster_Arr;
    MasterPupose: string;
    PuposeRelasi: integer;
    BrowseMode: boolean;
     TIPE_LAPORAN : Smallint;
    procedure ArrangColSize;
    procedure InitGrid;
    procedure SetFilter;
    procedure InitFilter;
    procedure LoadData;
    procedure LoadPerBarang;
    procedure DeleteTransaksi;
  public
    procedure Execute; overload;
    function Execute(vPupose: string;vRelasiId: integer): integer; overload;
  end;

var
  frmTrsSalesRekap: TfrmTrsSalesRekap;

implementation

uses MainMenu, Subroutines, UMaster, un_ryu, AutoSimply, UConst,
  DBConnection, trsSales, UConstTools, trsPurchaseRekapPrint, trsRetur,
  LaporanPerBarang;

const
  colNo     = 0;          {tipe perbarang}
  colDate   = 1;          colBNo   = 0;
  colNum    = 2;          colBTgl  = 1;
  colType   = 3;          colBToko = 2;
  colRelasi = 4;          colBItem = 3;
  colSub    = 5;          colBQty  = 4;
  colDisc   = 6;          colBHargaDlr = 5;
  colTotal  = 7;          colBHargaRp = 6;
  colBayar  = 8;          colBTotalDlr = 7;
  colSisa   = 9;          colBTotalRp = 8;
  colKurs   = 10;         colBLunasDlr = 9;
  colNotes  = 11;         colBLunasRp = 10;
  colId     = 12;         colBKet = 11;
  colIdType = 13;

 TIPE_REKAP = 0;
  TIPE_PER_BARANG = 1;
{$R *.dfm}

{ TfrmTrsPurchaseRekap }

procedure TfrmTrsSalesRekap.ArrangColSize;
begin
 case TIPE_LAPORAN of
   TIPE_REKAP : begin
       asgList.AutoSizeColumns(True, 3);
       if GlobalSystemUser.AccessLevel > LEVEL_OWNER then exit;
        asgList.ColWidths[colId]:= 0;
        asgList.ColWidths[colIdType]:= 0;
   end;
   TIPE_PER_BARANG : begin
        asgList.AutoSizeColumns(True, 3);
        if GlobalSystemUser.AccessLevel >= LEVEL_DEVELOPER then Exit;
    //    asgList.ColWidths[colId]:= 0;
      //  asgList.ColWidths[colTipe]:= 0;
    end;
   end; 
end;

procedure TfrmTrsSalesRekap.Execute;
begin
  trsMaster:= TTrsMaster_Arr.Create(nil);

  TMstRelationArr.GetList(GlobalStringList, IntToStr(PS_TYPE_CUSTOMER));
  GlobalStringList.Insert(0,'0=Semua');
  NameValueListToValueList(GlobalStringList, cmbRelasi.Items);
  BrowseMode:= False;
  MasterPupose:= '';
  InitGrid;
  InitFilter;
  Run(Self);
end;

procedure TfrmTrsSalesRekap.InitFilter;
begin
  trsMaster.Clear;
  cmbOpr.ItemIndex:= 0;
  cmbOprChange(nil);
  cmbRelasi.ItemIndex:= 0;
  cmbRelasiChange(nil);
  cmbStatus.ItemIndex:= 0;
  cmbStatusChange(nil);
  cmbJenis.ItemIndex := 0;
  dtpAwal.Date:= Now;
  dtpAkhir.Date:= Now;
  cmbTipe.ItemIndex := 0;
  cmbTipeSelect(Self);
  cmbTipe.Enabled := not BrowseMode;
  pnlTipe.Visible := not BrowseMode;
  
end;

procedure TfrmTrsSalesRekap.InitGrid;
begin

  case TIPE_LAPORAN of
    TIPE_REKAP : begin
      ResetGrid(asgList, 3, 15, 1,1);
      asgList.ColumnSize.Stretch:= True;
      with asgList do begin
        Cells[colNo,0]    := 'No.';
        Cells[colDate,0]  := 'Tanggal';
        Cells[colNum,0]   := 'No.Transaksi';
        Cells[colType,0]  := 'Jenis Transaksi';
        Cells[colRelasi,0]:= 'Relasi';
        Cells[colSub,0]   := 'Subtotal';
        Cells[colDisc,0]  := 'Discount';
        Cells[colTotal,0] := 'Total';
        Cells[colBayar,0] := 'Bayar';
        Cells[colSisa,0]  := 'Sisa';
        Cells[colKurs,0]  := 'Kurs';
        Cells[colNotes,0] := 'Keterangan';
        Cells[colId,0]    := 'Id';
        Cells[colIdType,0]    := 'IdType';
      end;
    end;
    TIPE_PER_BARANG : begin
       with asgList do begin
         Clear;
         SortSettings.Show := False;
         ResetGrid(asgList, 4, 13, 2,1);
         MergeCells(colBNo,0,1,2);
         Cells[colBNo,0]    := 'No.';
         MergeCells(colBTgl,0,1,2);
         Cells[colBTgl,0]   := 'Tanggal';
         MergeCells(colBToko,0,1,2);
         Cells[colBToko,0]  := 'Toko';
         MergeCells(colBItem,0,1,2);
         Cells[colBItem,0]  := 'Item';
         MergeCells(colBQty,0,1,2);
         Cells[colBQty,0]   := 'Qty';
         MergeCells(colBHargaDlr,0,2,1);
         Cells[colBHargaDlr,0] := 'Harga Satuan';
         Cells[colBHargaDlr,1] := 'Per $';
         Cells[colBHargaRp,1]  := 'Per Rp';
         MergeCells(colBTotalDlr,0,2,1);
         Cells[colBTotalDlr,0] := 'Total';
         Cells[colBTotalDlr,1] := '$';
         Cells[colBTotalRp,1]  := 'Rp';
         MergeCells(colBLunasDlr,0,2,1);
         Cells[colBLunasDlr,0] := 'Lunas';
         Cells[colBLunasDlr,1] := '$';
         Cells[colBLunasRp,1]  := 'Rp';
         MergeCells(colBKet,0,1,2);
         Cells[colBKet,0]   := 'Keterangan';
         MergeCells(colBKet+1,0,1,2);
         ColumnSize.Stretch:= True;
       end;
    end;
  end;
  ArrangColSize;
end;

procedure TfrmTrsSalesRekap.LoadData;
var i: integer;
begin
  try
    Screen.Cursor:= crHourGlass;
    frmMainMenu.suiProgressBar1.Show;
    InitGrid;
    SetFilter;
    trsMaster.LoadFromDb;
    for i:= 0 to trsMaster.fBuffer.RecordCount-1 do begin
      frmMainMenu.suiProgressBar1.Position:= round((i+1)/(trsMaster.fBuffer.RecordCount)*100);
      asgList.Ints[colNo,     i+1]:= i+1;
      asgList.Ints[colId,     i+1]:= BufferToInteger(trsMaster.fBuffer.Fields[0].Value);
      asgList.Dates[colDate,  i+1]:= BufferToDateTime(trsMaster.fBuffer.Fields[2].Value);
      asgList.Cells[colNum,   i+1]:= BufferToString(trsMaster.fBuffer.Fields[1].Value);
      asgList.Cells[colType,  i+1]:= TTrsMaster.getDescType(BufferToString(trsMaster.fBuffer.Fields[3].Value));
      asgList.Cells[colRelasi,i+1]:= IfThen(BufferToString(trsMaster.fBuffer.Fields[16].Value)<>'',
      BufferToString(trsMaster.fBuffer.Fields[16].Value),EkstrakString(BufferToString(trsMaster.fBuffer.Fields[18].Value),';',1));
      asgList.Floats[colSub,  i+1]:= BufferToFloat(trsMaster.fBuffer.Fields[5].Value);
      asgList.Floats[colDisc, i+1]:= BufferToFloat(trsMaster.fBuffer.Fields[6].Value);
      asgList.Floats[colTotal,i+1]:= BufferToFloat(trsMaster.fBuffer.Fields[7].Value);
      asgList.Floats[colBayar,i+1]:= BufferToFloat(trsMaster.fBuffer.Fields[11].Value);
      asgList.Floats[colSisa, i+1]:= BufferToFloat(trsMaster.fBuffer.Fields[12].Value);
      asgList.Cells[colNotes, i+1]:= BufferToString(trsMaster.fBuffer.Fields[4].Value);
      asgList.Cells[colIdType,i+1]:= BufferToString(trsMaster.fBuffer.Fields[3].Value);
      asgList.AddRow;
      trsMaster.fBuffer.MoveNext;
    end;
  finally
    trsMaster.fBuffer.Close;
    asgList.RowCount:= asgList.RowCount-1;
    asgList.FloatingFooter.ColumnCalc[colSub  ]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colDisc ]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colTotal]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colBayar]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colSisa ]:= acSUM;
    ArrangColSize;
    frmMainMenu.suiProgressBar1.Hide;
    Screen.Cursor:= crDefault;
  end;

end;

procedure TfrmTrsSalesRekap.SetFilter;
begin
  GlobalPeriode.setPeriode(cmbOpr.ItemIndex, dtpAwal.Date, dtpAkhir.Date);
  GlobalFilter.RelasiId:= cmbRelasi.Tag;
  GlobalFilter.JenisTransaction:= MasterPupose;
  GlobalFilter.StatusId:= cmbStatus.Tag;
  GlobalFilter.BanyakJenis := (cmbJenis.ItemIndex = 0);
  GlobalFilter.JenisTransaction := FormatSQLString(TRANS_SALES_CASH)+','+FormatSQLString(TRANS_SALES_CREDIT)+
        ','+FormatSQLString(TRANS_SALES_RETUR);
  if not GlobalFilter.BanyakJenis then
    case cmbJenis.ItemIndex of
      1 : GlobalFilter.JenisTransaction := TRANS_SALES_CASH;
      2 : GlobalFilter.JenisTransaction := TRANS_SALES_CREDIT;
      3 : GlobalFilter.JenisTransaction := TRANS_SALES_RETUR;
    end;
end;

procedure TfrmTrsSalesRekap.cmbRelasiChange(Sender: TObject);
begin
  cmbRelasi.Tag:= 0;
  if cmbRelasi.ItemIndex > 0 then
    cmbRelasi.Tag:= StrToInt(GlobalStringList.Names[cmbRelasi.ItemIndex]);
end;

procedure TfrmTrsSalesRekap.cmbStatusChange(Sender: TObject);
begin
  case cmbStatus.ItemIndex of
    0: cmbStatus.Tag:= -2;
    1: cmbStatus.Tag:= -1;
    2: cmbStatus.Tag:= 0;
  end;
end;

procedure TfrmTrsSalesRekap.cmbOprChange(Sender: TObject);
begin
  dtpAkhir.Enabled:= cmbOpr.ItemIndex = 3;
end;

procedure TfrmTrsSalesRekap.asgListGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  case TIPE_LAPORAN of
    TIPE_REKAP : begin
      if ARow = 0 then HAlign:= taCenter
      else if ACol in[0, colSub, colDisc, colTotal, colBayar, colSisa, colKurs] then HAlign:= taRightJustify;
    end;
    TIPE_PER_BARANG : begin
       if ARow in [0,1] then begin
         HAlign := taCenter;
         VAlign := vtaCenter;
       end
       else if ACol in [colBHargaDlr,colBQty,colBHargaRp,colBTotalDlr,colBTotalRp,colBLunasDlr,colBLunasRp] then
         HAlign := taRightJustify;
    end;
  end;
end;

procedure TfrmTrsSalesRekap.tbtRefreshClick(Sender: TObject);
begin
  case TIPE_LAPORAN of
    TIPE_REKAP : LoadData;
    TIPE_PER_BARANG : LoadPerBarang;
  end;
end;

procedure TfrmTrsSalesRekap.ToolButton5Click(Sender: TObject);
begin
  InitFilter
end;

procedure TfrmTrsSalesRekap.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  trsMaster.Free; 
end;

function TfrmTrsSalesRekap.Execute(vPupose: string; vRelasiId: integer): integer;
begin
  Result:= 0;
  trsMaster:= TTrsMaster_Arr.Create(nil);

  if vPupose = '' then ModalResult:= mrCancel;

  TMstRelationArr.GetList(GlobalStringList, '');
  GlobalStringList.Insert(0,'0=Semua');
  NameValueListToValueList(GlobalStringList, cmbRelasi.Items);
  BrowseMode:= True;
  MasterPupose:= vPupose;
  InitGrid;
  InitFilter;

  case MasterPupose[1] of
    TRANS_PURCHASE_CREDIT: Self.Caption:= 'Transaksi Pembelian';
    TRANS_SALES_CREDIT   : Self.Caption:= 'Transaksi Penjualan';
  end;

  tbtNew.Enabled:= False;

//setting up filter ....
  cmbRelasi.ItemIndex:= GlobalStringList.IndexOfName(IntToStr(vRelasiId));
  cmbRelasiChange(nil);

  cmbStatus.ItemIndex:= 2; //yang belum lunas
  cmbStatusChange(nil);

  cmbOpr.ItemIndex:= 3;
  cmbOprChange(nil);
  dtpAwal.Date:= StartOfTheMonth(Now);
  dtpAkhir.Date:= EndOfTheMonth(Now);
  SetFilter;

//setting up filter ....
  LoadData;

  Run(Self);
  if ModalResult=mrOk then
    Result:= asgList.Ints[colId, asgList.Row];
end;

procedure TfrmTrsSalesRekap.asgListDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
  if BrowseMode then ModalResult:= mrOk
  else tbtDetail.Click
end;

procedure TfrmTrsSalesRekap.tbtDetailClick(Sender: TObject);
var tipe: string;
begin

  tipe:= TTrsMaster.getTransType(asgList.Ints[colId,asgList.Row]);
  if tipe = TRANS_SALES_RETUR then
     frmTrsRetur.VewDetail(asgList.Ints[colId,asgList.Row], tipe)
  else if tipe <> '' then
    frmTrsSales.VewDetail(asgList.Ints[colId,asgList.Row], tipe);
end;

procedure TfrmTrsSalesRekap.ToolButton3Click(Sender: TObject);
begin
  CariData(asgList, Self);
end;

procedure TfrmTrsSalesRekap.tbtPrintClick(Sender: TObject);
begin
  case TIPE_LAPORAN of
    TIPE_REKAP : qrpTrsPurchaseRekap.Executes(asgList);
    TIPE_PER_BARANG : qrpLaporanPerBarang.Executes(asgList);
  end;
end;

procedure TfrmTrsSalesRekap.tbtNewClick(Sender: TObject);
//var tipe: string;
begin

  //tipe:= TTrsMaster.getTransType(asgList.Ints[colId,asgList.Row]);

 // if tipe = TRANS_SALES_RETUR then
   //  frmTrsRetur.VewDetail(0, tipe)
  //else if tipe <> '' then
  //  frmTrsSales.VewDetail(0, tipe);
end;

procedure TfrmTrsSalesRekap.tbtDeleteClick(Sender: TObject);
begin
  //Alert(MSG_UNDER_CONSTRUCTION);
  DeleteTransaksi;
end;

procedure TfrmTrsSalesRekap.DeleteTransaksi;
var trsMaster: TTrsMaster; tipe: string;
begin
  if asgList.Ints[colId,asgList.Row] = 0 then exit;
  if GlobalSystemUser.AccessLevel >= LEVEL_MANAGER then begin
    if Confirmed('Apakah anda yakin transaksi nomor '+asgList.Cells[colNum,asgList.Row]+ ' akan dihapus?') then begin
      tipe:= TTrsMaster.getTransType(asgList.Ints[colId,asgList.row]);
      trsMaster := TTrsMaster.Create(tipe);
      try
        if trsMaster.SelectIndB(asgList.Ints[colId,asgList.Row]) then
          trsMaster.DeleteTransaksi(trsMaster.TransId,tipe)
        else
          Alert('Tidak ada data yang terhapus');
      finally
        trsMaster.Free;
      end;
    end;
  end
  else Alert(MSG_UNAUTHORISED_ACCESS);
end;

procedure TfrmTrsSalesRekap.tblEditClick(Sender: TObject);
//var vTmpTrans : TTrsMaster;
begin
  if GlobalSystemUser.AccessLevel < LEVEL_MANAGER then begin
    Alert(MSG_UNAUTHORISED_ACCESS);
    exit;
  end;
  if asgList.Ints[colId,asgList.Row] = 0 then exit;

  if asgList.Cells[colIdType,asgList.Row] = TRANS_SALES_RETUR then
     frmTrsRetur.VewDetail(asgList.Ints[colId,asgList.Row], asgList.Cells[colIdType,asgList.Row])
  else if asgList.Cells[colIdType,asgList.Row] <> '' then
    frmTrsSales.VewDetail(asgList.Ints[colId,asgList.Row], asgList.Cells[colIdType,asgList.Row],True);

 { vTmpTrans := TTrsMaster.Create(asgList.Cells[colIdType,asgList.Row]);
  if vTmpTrans.SelectIndB(asgList.Ints) then
     vTmpTrans.DeleteTransaksi(vTmpTrans.TransId,vTmpTrans.TransType,)}
end;

procedure TfrmTrsSalesRekap.ReturPenjualan1Click(Sender: TObject);
begin
   frmTrsRetur.VewDetail(0, TRANS_SALES_RETUR);
end;

procedure TfrmTrsSalesRekap.PenjualanCash1Click(Sender: TObject);
begin
   frmTrsSales.VewDetail(0, TRANS_SALES_CASH);
end;

procedure TfrmTrsSalesRekap.PenjualanCredit1Click(Sender: TObject);
begin
  frmTrsSales.VewDetail(0, TRANS_SALES_CREDIT);
end;

procedure TfrmTrsSalesRekap.LoadPerBarang;
var i: integer;
begin
  try
    Screen.Cursor:= crHourGlass;
    frmMainMenu.suiProgressBar1.Show;
    InitGrid;
    SetFilter;
    trsMaster.LoadPerBarang('trs_sales');
    {'select m.trans_date, r.relation_id, concat(i.item_name,'' ('',d.serial,'')'') as item,d.quantity,d.price,d.kurs, (d.price * d.quantity) as totalRp, '+
   ' (d.quantity * d.kurs) as totalDlr ,m.notes, m.trans_id,m.bayar,m.sisa '+
   '  from trs_master m, mst_relation r, trs_purchase d, mst_item i '+
   '  where m.trans_id = d.trans_id and m.relation_id = r.relation_id and i.item_id=d.item_id '+
  'from trs_master t left join mst_relation r on t.relation_id = r.relation_id '+}
                  {tipe perbarang
                  colBNo   = 0;                  colBTgl  = 1;
                  colBToko = 2;                  colBItem = 3;
                  colBQty  = 4;                  colBHargaDlr = 5;
                  colBHargaRp = 6;                  colBTotalDlr = 7;
                  colBTotalRp = 8;                  colBLunasDlr = 9;
                  colBLunasRp = 10;                  colBKet = 11;}
    for i:= 0 to trsMaster.fBuffer.RecordCount-1 do begin
      frmMainMenu.suiProgressBar1.Position:= round((i+1)/(trsMaster.fBuffer.RecordCount)*100);
      asgList.Ints[colBNo,     i+2]:= i+1;
      asgList.Dates[colBTgl,  i+2]:= BufferToDateTime(trsMaster.fBuffer.Fields[0].Value);
      asgList.Cells[colBToko,   i+2]:= IfThen( BufferToString(trsMaster.fBuffer.Fields[12].Value)<>'',BufferToString(trsMaster.fBuffer.Fields[12].Value),
                        EkstrakString(trsMaster.fBuffer.Fields[13].Value,';',1));
      asgList.Cells[colBItem,  i+2]:= BufferToString(trsMaster.fBuffer.Fields[2].Value);
//      asgList.Cells[colRelasi,i+1]:= BufferToString(trsMaster.fBuffer.Fields[16].Value);
      asgList.Floats[colBQty, i+2]:= BufferToFloat(trsMaster.fBuffer.Fields[3].Value);
      asgList.Floats[colBHargaRp, i+2]:= BufferToFloat(trsMaster.fBuffer.Fields[4].Value);
      asgList.Floats[colBHargaDlr,i+2]:= BufferToFloat(trsMaster.fBuffer.Fields[5].Value);
      asgList.Floats[colBTotalRp,i+2]:= BufferToFloat(trsMaster.fBuffer.Fields[6].Value);
      asgList.Floats[colBTotalDlr, i+2]:= BufferToFloat(trsMaster.fBuffer.Fields[7].Value);
//      asgList.Cells[colNotes, i+1]:= BufferToString(trsMaster.fBuffer.Fields[4].Value);
  //    asgList.Cells[colTipe,  i+1]:= BufferToString(trsMaster.fBuffer.Fields[3].Value);
      asgList.AddRow;
      trsMaster.fBuffer.MoveNext;
    end;
  finally
    trsMaster.fBuffer.Close;
    asgList.RowCount:= asgList.RowCount-1;
    asgList.FloatingFooter.ColumnCalc[colBTotalDlr ]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colBTotalRp ]:= acSUM;
   { asgList.FloatingFooter.ColumnCalc[colTotal]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colBayar]:= acSUM;
    asgList.FloatingFooter.ColumnCalc[colSisa ]:= acSUM;}
    ArrangColSize;
    frmMainMenu.suiProgressBar1.Hide;
    Screen.Cursor:= crDefault;
  end;


end;

procedure TfrmTrsSalesRekap.cmbTipeSelect(Sender: TObject);
begin
 case cmbTipe.ItemIndex of
    TIPE_PER_BARANG : TIPE_LAPORAN := TIPE_PER_BARANG
  else TIPE_LAPORAN := TIPE_REKAP;
  end;
  InitGrid;
  tbtDetail.Enabled := TIPE_LAPORAN = TIPE_REKAP;
  tbtDelete.Enabled := TIPE_LAPORAN = TIPE_REKAP;
  tblEdit.Enabled := TIPE_LAPORAN = TIPE_REKAP;
end;

end.
