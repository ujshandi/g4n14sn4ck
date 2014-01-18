unit ReportPenjualan1Print;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, AdvGrid;

type
  TqrpReportPenjualan1 = class(TQuickRep)
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    qrlCust: TQRLabel;
    qrlNet: TQRLabel;
    qrlDisc: TQRLabel;
    qrlBarangPokok: TQRLabel;
    qrlTgl: TQRLabel;
    qrlCompanyName: TQRLabel;
    qrlCompanyAddress: TQRLabel;
    qrlCompanyContact: TQRLabel;
    qrlPeriode: TQRLabel;
    QRLabel17: TQRLabel;
    shpDetail: TQRShape;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRSysData2: TQRSysData;
    qrlBarang: TQRLabel;
    qrlBarangProfit: TQRLabel;
    qrlCaraBayar: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape29: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRepNeedData(Sender: TObject; var MoreData: Boolean);
  private
    i: integer;
    Grid: TAdvStringGrid;
  public
    procedure Executes(AGrid: TAdvStringGrid);
  end;

var
  qrpReportPenjualan1: TqrpReportPenjualan1;

implementation

uses Subroutines;

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
{$R *.DFM}

{ TqrpReportPenjualan1 }

procedure TqrpReportPenjualan1.Executes(AGrid: TAdvStringGrid);
begin
  Grid:= AGrid;
  qrlCompanyName.Caption   := CompanyProfile.FCompanyName;
  qrlCompanyAddress.Caption:= CompanyProfile.FAddress;
  qrlCompanyContact.Caption:= CompanyProfile.FTelp1;
  qrlPeriode.Caption:= CaptionPeriode(GlobalPeriode.OpPeriodeAwal1, GlobalPeriode.PeriodeAwal1, GlobalPeriode.PeriodeAkhir1);

  i:= 2;
  PreviewModal;
end;

procedure TqrpReportPenjualan1.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  i:= 2;
end;

procedure TqrpReportPenjualan1.QuickRepNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  MoreData:= i < Grid.RowCount;
  if MoreData then begin
    shpDetail.Enabled:= (i = Grid.RowCount-1);
    qrlTgl.Caption:= '';
    qrlBarangPokok.Caption:= '';
    qrlBarang.Caption:= '';
    qrlBarangProfit.Caption:= '';
    qrlDisc.Caption:= '';
    qrlNet.Caption:= '';
//    qrlProfit.Caption:= '';
    qrlCust.Caption:= '';
    qrlCaraBayar.Caption := '';

    qrlTgl.Caption:= Grid.Cells[colTgl, i];
    qrlBarang.Caption:= Grid.Cells[colJualBarang, i];
    qrlBarangPokok.Caption:= Grid.Cells[colJualBarangPokok, i];
    qrlBarangProfit.Caption:= Grid.Cells[colJualBarangProfit, i];
    qrlDisc.Caption:= Grid.Cells[colDisc, i];
    qrlNet.Caption:= Grid.Cells[colNet, i];
//    qrlProfit.Caption:= Grid.Cells[colProfit, i];
    qrlCust.Caption:= Grid.Cells[colCust, i];
    qrlCaraBayar.Caption:= Grid.Cells[colCaraBayar, i];
    Inc(i);
  end;
end;

end.
