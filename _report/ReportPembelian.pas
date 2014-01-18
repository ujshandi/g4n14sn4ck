unit ReportPembelian;
{
Per Bulan
Per 2 Bulan
Per 3 Bulan
Per 4 Bulan}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, ToolWin, StdCtrls, AdvEdit, UTransaction,
  Grids, BaseGrid, AdvGrid, WinXP, SUIImagePanel, Math, DateUtils, strutils,
  frmDockForm;

type
  TfrmReportPembelian = class(TDockForm)
    ToolBar1: TToolBar;
    tbtRefresh: TToolButton;
    ToolButton2: TToolButton;
    tbtPrint: TToolButton;
    WinXP1: TWinXP;
    ToolButton5: TToolButton;
    suiPanel1: TsuiPanel;
    suiPanel2: TsuiPanel;
    grid: TAdvStringGrid;
    panelDate: TPanel;
    dtpAkhir: TDateTimePicker;
    dtpAwal: TDateTimePicker;
    Label2: TLabel;
    Label1: TLabel;
    cmbOpr: TComboBox;
    txtShift: TAdvEdit;
    txtKasir: TAdvEdit;
    btnKasir: TButton;
    Button3: TButton;
    txtCust: TAdvEdit;
    btnCust: TButton;
    cmbJenisReport: TComboBox;
    Label3: TLabel;
    txtStruk: TAdvEdit;
    Label4: TLabel;
    cmbJenis: TComboBox;
    txtDokter: TAdvEdit;
    Button1: TButton;
    procedure gridGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tbtRefreshClick(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure cmbOprChange(Sender: TObject);
    procedure tbtPrintClick(Sender: TObject);
    procedure btnKasirClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnCustClick(Sender: TObject);
    procedure cmbJenisReportChange(Sender: TObject);
    procedure gridGetCellBorder(Sender: TObject; ARow, ACol: Integer;
      APen: TPen; var Borders: TCellBorders);
    procedure gridGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure cmbJenisChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    procedure InitGridTgl;
    procedure InitGridHistori;
    procedure SetFilter;
    procedure InitFilter;
    procedure LoadDataBeliTgl;//rekap
    procedure LoadDataBeliBulanan;
    procedure LoadDataHistori;
  public
    procedure Execute(id: integer); override;
  end;

var
  frmReportPembelian: TfrmReportPembelian;

implementation

uses Subroutines, MainMenu,
  MstCodeList, MySQLConnector, uMysqlClient, UConst, UMaster,
  LookupData, ReportPenjualan1Print, UConstTool, ReportJualPrint,
  ReportPenjualan2Print, ReportPembelian2Print, ReportPembelianPrint;

const
  colNo     = 0;
  colTgl    = 1;
  colCaraBayar = 2;
  colJualBarangPokok = 3;
  colJualBarang   = 4;
  colJualBarangProfit   = 5;


  colDisc   = 6;
  colNetPokok    = 7;
  colNet    = 8;

  colProfit = 9;
  colCust   = 10;
  colDate1  =11;
  colDate2  = 12;

  colCode    = 1;
  colStuk    = 2;
  colHargaPokok = 3;
  colHarga   = 4;
  colQty     = 5;
  colDiscPrc = 6;
  colDiscRp  = 7;
  colSubtotalPokok= 8;
  colSubtotal= 9;
  colRowID   = 10;


{$R *.dfm}

{ TfrmTrsItemShipmentList }

procedure TfrmReportPembelian.Execute(id: integer);
begin
  inherited;
  ToolBar1.ParentColor:= false;
  ToolBar1.Color:= clWhite;

  InitFilter;
  Run(Self);
end;

procedure TfrmReportPembelian.InitFilter;
begin
  GlobalFilter.Reset;
  GlobalPeriode.Reset;
  cmbJenisReport.ItemIndex:= 0;
  cmbJenisReportChange(nil);

  txtKasir.Tag:= 0;
  txtShift.Tag:= 0;
  txtCust.Tag:= 0;
  txtDokter.Tag:= 0;
  txtKasir.Clear;//:= 'Semua Kasir';
  txtCust.Text:='';// 'Semua Pasien';
  txtStruk.Clear;
  cmbOpr.ItemIndex:= 3;
  cmbOprChange(nil);
  cmbJenis.ItemIndex:= 0;
  cmbJenisChange(nil);
  dtpAwal.Date:= ServerNow;
  dtpAkhir.Date:= ServerNow;
end;

procedure TfrmReportPembelian.SetFilter;
begin
  GlobalFilter.Reset;
  GlobalFilter.SeriesID := txtShift.Tag;
  GlobalFilter.StatusID := txtCust.Tag;
  GlobalFilter.FString1 := txtKasir.Text;
  GlobalFilter.Numeric1 := cmbJenis.Tag;
  GlobalFilter.Numeric3 := txtDokter.Tag;  
  GlobalFilter.Name     := txtStruk.Text;
  GlobalPeriode.setPeriode(cmbOpr.ItemIndex, dtpAwal.Date, dtpAkhir.Date);
end;

procedure TfrmReportPembelian.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  case cmbJenisReport.Tag of
    //5
    1: if ACol in[colStuk, colCode] then HAlign:= taLeftJustify
       else HAlign:= taRightJustify;
    else if ACol > colTgl then HAlign:= taRightJustify;
  end;
end;

procedure TfrmReportPembelian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
//  if lsGudang <> nil then lsGudang.Free;
//  lsGudang:= nil;
end;

procedure TfrmReportPembelian.tbtRefreshClick(Sender: TObject);
begin
  case cmbJenisReport.Tag of
    0: LoadDataBeliTgl;
    //5
    1: LoadDataHistori;
    //else LoadDataJualBulanan;
  end;
end;

procedure TfrmReportPembelian.ToolButton5Click(Sender: TObject);
begin
  InitFilter
end;

procedure TfrmReportPembelian.LoadDataBeliTgl;
var i,j : integer; tgl, item: TMysqlResult;
begin
  try
    StartProgress;
    SetFilter;
    InitGridTgl;
    tgl:= TReport.LoadTglBeli;
    grid.RowCount:= IfThen(tgl.RecordCount > 0, tgl.RecordCount + 2, 3);
    tgl.First;
    for i:= 0 to tgl.RecordCount-1 do begin
      ProsesProgress(i, tgl.RecordCount);
      grid.Dates[colTgl, i+1]:= BufferToDateTime(tgl.FieldValue(0));
//      grid.Cells[colCaraBayar, i+1]:= IfThen(BufferToInteger(tgl.FieldValue(1))=0,'TUNAI','NON TUNAI');
      GlobalPeriode.PeriodeAwal1:= BufferToDateTime(tgl.FieldValue(0));
      GlobalPeriode.OpPeriodeAwal1:= soEquals;
      GlobalFilter.Numeric1 := BufferToInteger(tgl.FieldValue(1));

      item := TReport.LoadTglBeliApotek;// LoadTglJualApotek;

      //'0net, 1embalase, 2amount_profit, 3count(*) '+
      grid.Cells[colJualBarangPokok,   i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(2)));
  //    grid.Cells[colJualBarangPokok,   i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(7)));
     grid.Cells[colJualBarangProfit,   i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(3)));//-BufferToFloat(item.FieldValue(7)));

     // grid.Cells[colDisc,   i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(1)));
      grid.Cells[colNet,    i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(2)) - BufferToFloat(item.FieldValue(3)));//+ BufferToFloat(item.FieldValue(6))
  //              -BufferToFloat(item.FieldValue(1)));
//      grid.Cells[colProfit, i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(2)));
      grid.Cells[colCust,   i+1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(1)));

      item.destroy;
      tgl.MoveNext;
    end;
    tgl.destroy;

    for j:= colJualBarangPokok to colCust do
      grid.Cells[j,grid.RowCount-1]:= FloatToStrFmtNull(grid.ColumnSum(j, 1, grid.RowCount-1));
  finally
    EndProgress;
  end;
end;

procedure TfrmReportPembelian.InitGridTgl;
begin
  grid.ExpandAll;
  grid.Clear;
  grid.ColCount:= colDate2 + 1;

  grid.RowCount :=3;
  grid.FixedCols:= 2;
  grid.FixedRows:= 1;

  grid.FloatingFooter.Visible:= True;
  grid.SortSettings.Show:= False;
  grid.ColumnSize.StretchColumn := -1;
  grid.ColumnSize.Stretch:= False;
  grid.AutoSizeColumns(True,2);
  grid.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect];

  //grid.MergeCells(colTgl,0,1,2);
  grid.Cells[colTgl,   0]:= 'Tanggal';
  //grid.MergeCells(colCaraBayar,0,1,2);
  //grid.Cells[colCaraBayar,   0]:= 'Cara Bayar';
  // grid.MergeCells(colJualBarangPokok,0,3,1);
  grid.Cells[colJualBarangPokok,  0]:= 'Pembelian';
//  grid.Cells[colJualBarangPokok,  1]:= 'Pokok';
//  grid.Cells[colJualBarang,  1]:= 'Jual';
  grid.Cells[colJualBarangProfit,  0]:= 'Retur';
//  grid.MergeCells(colDisc,0,1,2);
  //grid.Cells[colDisc,  0]:= 'Total';
 // grid.MergeCells(colNet,0,1,2);
  grid.Cells[colNet,   0]:= 'Jumlah';
  //grid.MergeCells(colProfit,0,1,2);
  //grid.Cells[colProfit,0]:= 'Profit';
  //grid.MergeCells(colCust,0,1,2);
  //grid.Cells[colCust,  0]:= 'Cust';

  grid.ColWidths[colTgl   ]:= 100;
  grid.ColWidths[colCaraBayar   ]:= 0;
  grid.ColWidths[colJualBarangPokok  ]:= 100;
  grid.ColWidths[colJualBarang  ]:= 0;
  grid.ColWidths[colJualBarangProfit  ]:= 100;
  grid.ColWidths[colDisc  ]:= 0;
  grid.ColWidths[colNet   ]:= 100;
  grid.ColWidths[colNetPokok   ]:= 0;
  grid.ColWidths[colProfit]:= 0;//100;
  grid.ColWidths[colCust  ]:= 0;
  grid.ColWidths[colNo]:= 20;
  grid.ColWidths[colDate1]:= 0;
  grid.ColWidths[colDate2]:= 0;
end;

procedure TfrmReportPembelian.cmbOprChange(Sender: TObject);
begin
  dtpAkhir.Enabled:= cmbOpr.ItemIndex = 3;
end;

procedure TfrmReportPembelian.LoadDataHistori;
var i,j, row: integer; item: TMysqlResult;
  struk: string; last_trx: boolean;
  grandTotal,grandTotalPokok,grandTunai,grandNonTunai,subtotalPokok,TotalPokok :double;
begin
  try
    StartProgress;
    SetFilter;
    InitGridHistori;
    grandTotal := 0;grandTunai :=0; grandNonTunai :=0;TotalPokok := 0;grandTotalPokok:=0;
    item:= TReport.LoadTglBeliHistori;// LoadTglJualHistori;
   {0trans_num, 1item_name, 2barcode, 3price, 4quantity, 5mst_code,
    6disc, 7disc_val, 8amount, 9trans_date, 10subtotal, 11disc_mst,
    12disc_val_mst, 13tax, 14total..... 18transtype}
    for i:= 1 to item.RecordCount do begin
      ProsesProgress(i, item.RecordCount);
      row:= grid.RowCount-1;
      if struk <> item.FieldValue(0) then begin
         grid.MergeCells(colCode, row, 2, 1);
         grid.Ints[colRowID, row]:= 1;
         grid.Cells[colCode, row]:= item.FieldValue(0);//+ IfThen(BufferToInteger(item.FieldValue(19))=0,' (TUNAI)',' (NON TUNAI)');
         grid.Dates[colSubtotal,row]:= BufferToDateTime(item.FieldValue(8));
         grid.AddRow;
      end;
      struk:= item.FieldValue(0);
      row:= grid.RowCount-1;
      {colCode    = 1;
  colStuk    = 2;
  colHargaPokok = 3;
  colHarga   = 4;
  colQty     = 5;
  colDiscPrc = 6;
  colDiscRp  = 7;
  colSubtotalPokok= 8;
  colSubtotal= 9;
  colRowID   = 10;}
      grid.Cells[colCode,row]:= item.FieldValue(1) ;
      grid.Cells[colStuk,row]:=  item.FieldValue(2);

      grid.Cells[colQty,row]:=
            FloatToStrFmtNull(BufferToFloat(item.FieldValue(4))) + ' '+item.FieldValue(5);
        grid.Cells[colHargaPokok,row]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(3)));
   //     grid.Cells[colHargaPokok,row]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(20)));
        grid.Cells[colDiscRp,row]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(6)));
        grid.Cells[colSubtotal,row]:= FloatToStrFmtNull(IfThen(BufferToFloat(item.FieldValue(14))=TRANS_TYPE_RETUR,1,1)* BufferToFloat(item.FieldValue(7)));
       // subtotalPokok := (BufferToFloat(item.FieldValue(4)) * BufferToFloat(item.FieldValue(20))) - BufferToFloat(item.FieldValue(7)) ;
        TotalPokok := TotalPokok + subtotalPokok;
        //grid.Cells[colSubtotalPokok,row]:= FloatToStrFmtNull(IfThen(BufferToInteger(item.FieldValue(18))=SALES_TYPE_RETUR,-1,1)* subtotalPokok);
   
      last_trx:= False;
      if (i < item.RecordCount) and (i>=1) then begin
        item.MoveNext;
        last_trx:= item.FieldValue(0) <> struk;
        item.Prior;
      end;

      if (i = item.RecordCount) or last_trx then begin
        grid.AddRow; //row:= grid.RowCount-1;
        grid.Ints[colRowID,     grid.RowCount-1]:= 2;
     
        grid.Cells[colDiscRp,grid.RowCount-1]:= 'Discount:';
        grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(10)));
        grid.AddRow;
        grid.Cells[colCode, grid.RowCount-1]:= 'Opr.: ';
        grid.Cells[colStuk, grid.RowCount-1]:= item.FieldValue(13);
        grid.Cells[colDiscRp,grid.RowCount-1]:= 'Total:';
        grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(IfThen(BufferToInteger(item.FieldValue(14))=TRANS_TYPE_RETUR,1,1)* BufferToFloat(item.FieldValue(11)));
         grid.AddRow;
     //   grid.AddRow;
        grandTotal :=grandTotal + IfThen(BufferToInteger(item.FieldValue(14))=TRANS_TYPE_RETUR,-1,1)*BufferToFloat(item.FieldValue(11));
        grandTotalPokok := grandTotalPokok + TotalPokok;
        TotalPokok := 0;
        if (BufferToInteger(item.FieldValue(14))=TRANS_TYPE_RECEIPT) then
          grandTunai := grandTunai + BufferToFloat(item.FieldValue(11));// IfThen(BufferToInteger(item.FieldValue(16))=TRANS_TYPE_RETUR,-1,1)*BufferToFloat(item.FieldValue(14));
        if (BufferToInteger(item.FieldValue(14))=TRANS_TYPE_RETUR) then
          grandNonTunai := grandNonTunai +  BufferToFloat(item.FieldValue(11));//IfThen(BufferToInteger(item.FieldValue(16))=TRANS_TYPE_RETUR,-1,1)*BufferToFloat(item.FieldValue(14));


      {  grid.Cells[colDiscRp,grid.RowCount-1]:= 'TUNAI:';
        grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(16)));
        grid.AddRow;}
      end;
      grid.AddRow;

      item.MoveNext;
    end;
    grid.Cells[colDiscRp,grid.RowCount-1]:= 'Tot. Pembelian :';
    grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(grandTunai);
     grid.AddRow;
     grid.Cells[colDiscRp,grid.RowCount-1]:= 'Tot. Retur :';
     grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(grandNonTunai);
     grid.AddRow;
    grid.Cells[colDiscRp,grid.RowCount-1]:= 'Grand Total:';
    grid.Cells[colSubtotal,grid.RowCount-1]:= FloatToStrFmtNull(grandTotal);

    item.destroy;
  finally
    EndProgress;
  end;
end;

procedure TfrmReportPembelian.InitGridHistori;
begin
  grid.Clear;
  grid.ColCount:= colRowID + 1;
  grid.RowCount := 2;
  grid.FixedCols:= 1;
  grid.FixedRows:= 1;
  grid.ColumnSize.StretchColumn:= colStuk;
  grid.ColumnSize.Stretch:= True;
  grid.FloatingFooter.Visible:= False;
  grid.SortSettings.Show:= False;
  grid.Options := [goRangeSelect, goDrawFocusSelected, goRowSelect];

  grid.Cells[colStuk,    0]:= 'Deskripsi Barang';
  grid.Cells[colCode,    0]:= 'Kode';
  grid.Cells[colHargaPokok,   0]:= 'Harga';
  grid.Cells[colHarga,   0]:= 'H.Jual';
  grid.Cells[colQty,     0]:= 'Qty';
  grid.Cells[colDiscPrc, 0]:= 'Disc(%)';
  grid.Cells[colDiscRp,  0]:= 'Disc Rp';
  grid.Cells[colSubtotalPokok,0]:= 'Subtotal (Pokok)';
  grid.Cells[colSubtotal,0]:= 'Subtotal';

  grid.ColWidths[colStuk]:= 150;
  grid.ColWidths[colCode]:= 95;
  grid.ColWidths[colHargaPokok]:= 70;
  grid.ColWidths[colHarga]:= 0;
  grid.ColWidths[colQty]:= 90;
  grid.ColWidths[colDiscPrc]:= 0;
  grid.ColWidths[colDiscRp]:= 80;
  grid.ColWidths[colSubtotalPokok]:= 0;
  grid.ColWidths[colSubtotal]:= 90;
  grid.ColWidths[colNo]:= 18;
  grid.ColWidths[colRowID]:= 0;
end;

procedure TfrmReportPembelian.tbtPrintClick(Sender: TObject);
begin
  if not TSystemAccess.isCan(CAN_PRINT,AktiveControl.Tag) then exit;
  if MustRegister then exit;
 // if GlobalSystemConfig.localSetting.PrinterAdm <> '' then begin
   //  if (getDefaultPrinter <> GlobalSystemConfig.localSetting.PrinterAdm) then
    //     setDefaultPrinter(GlobalSystemConfig.localSetting.PrinterAdm);
  //end;
   SetFilter;
  if cmbJenisReport.ItemIndex = 0 then begin //harian

    try
      Application.CreateForm(TqrpReportPembelian, qrpReportPembelian);
      qrpReportPembelian.Executes(grid);
    finally
      qrpReportPembelian.Destroy;
    end;

 end else begin
    try
      Application.CreateForm(TqrpReportPembelian2, qrpReportPembelian2);
      qrpReportPembelian2.Executes(grid);
    finally
      qrpReportPembelian2.Destroy;
    end;
 end;

end;

procedure TfrmReportPembelian.btnKasirClick(Sender: TObject);
var id: string;
begin
  id:= frmLookup.ExecuteUser('USER');
  if Id <> '' then begin
    txtKasir.Text:=  id;//TMstMaster.GetName(id);
//    txtKasir.Tag:= id;
  end;
end;

procedure TfrmReportPembelian.Button3Click(Sender: TObject);
var id: integer;
begin
  id:= frmLookup.Execute('SHIFT');
  if Id > 0 then begin
    txtShift.Text:= TMstMaster.GetName(id);
    txtShift.Tag:= id;
  end;
end;

procedure TfrmReportPembelian.btnCustClick(Sender: TObject);
var id: integer;
begin
  id:= frmLookup.Execute('SPL');
  if Id > 0 then begin
    txtCust.Text:= TMstRelation.GetName(id);
    txtCust.Tag:= id;
  end;
end;

procedure TfrmReportPembelian.LoadDataBeliBulanan;
var i,j : integer; item: TMysqlResult;
  ls: arString;
begin
  try
    StartProgress;
    SetFilter;
    InitGridTgl;
    grid.Cells[colTgl, 0]:= 'Periode';
    ls:= ExtractDate(dtpAwal.Date, dtpAkhir.Date, cmbJenisReport.Tag);
    for i:= 0 to length(ls)-1 do begin
      grid.Cells[colTgl,   i+1]:= ExtractYearMonth2(ls[i]);
      grid.Cells[colDate1, i+1]:= getYearMonth(ls[i], 1);
      grid.Cells[colDate2, i+1]:= getYearMonth(ls[i], 2);
      grid.AddRow;
    end;
    DeleteRowTerakhir(grid, 4,1);

    for i:= 1 to length(ls) do begin
      ProsesProgress(i, length(ls));
      GlobalPeriode.setPeriode(cmbOpr.ItemIndex, dtpAwal.Date, dtpAkhir.Date, True,
        grid.Cells[colDate1, i], grid.Cells[colDate2, i]);

      item:= TReport.LoadTglJualNilaiBulanApotek;
      //total:= TReport.LoadTglJualBulanKunjungan;
      {for j:= 0 to item.FieldsCount-1 do
        grid.Cells[colJual+j,i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(j)));}

      grid.Cells[colJualBarang,   i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(0)));
      grid.Cells[colDisc,   i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(1)));
      grid.Cells[colNet,    i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(0)) + BufferToFloat(item.FieldValue(1)));
      grid.Cells[colProfit, i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(2)));
      grid.Cells[colCust,   i]:= FloatToStrFmtNull(BufferToFloat(item.FieldValue(3)));

      item.destroy;
    end;

    for j:= colJualBarang to colCust do
      grid.Cells[j,grid.RowCount-1]:= FloatToStrFmtNull(
        grid.ColumnSum(j, 1, grid.RowCount-2));
  finally
    EndProgress;
  end;

end;

procedure TfrmReportPembelian.cmbJenisReportChange(Sender: TObject);
begin
  case cmbJenisReport.ItemIndex of
    0: cmbJenisReport.Tag:= 0;
  {  1: cmbJenisReport.Tag:= 1;
    2: cmbJenisReport.Tag:= 2;
    3: cmbJenisReport.Tag:= 3;
    4: cmbJenisReport.Tag:= 4;
    5: cmbJenisReport.Tag:= 5;}
    else cmbJenisReport.Tag:= 1;
  end;
  txtStruk.Enabled:= cmbJenisReport.Tag = 1;//5;
end;

procedure TfrmReportPembelian.gridGetCellBorder(Sender: TObject; ARow,
  ACol: Integer; APen: TPen; var Borders: TCellBorders);
begin
  case cmbJenisReport.Tag of
    //5
    1: case grid.Ints[colRowID, ARow] of
         1: if ACol > 0 then Borders:= [cbBottom];
         2: if ACol > 0 then Borders:= [cbTop];
       end;
  end;
end;

procedure TfrmReportPembelian.gridGetCellColor(Sender: TObject; ARow,
  ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  case cmbJenisReport.Tag of
    //5
    1: case grid.Ints[colRowID, ARow] of
         1: AFont.Style:= [fsBold];
       end;
  end;
end;

procedure TfrmReportPembelian.cmbJenisChange(Sender: TObject);
begin
  cmbJenis.Tag:= cmbJenis.ItemIndex-1;
end;

procedure TfrmReportPembelian.Button1Click(Sender: TObject);
var id: integer;
begin
  id:= frmLookup.Execute('DOKTER');
  if Id > 0 then begin
    txtDokter.Tag:= id;
  end;
end;

end.




