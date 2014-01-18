unit ReportPembelianPrint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, AdvGrid;

type
  TqrpReportPembelian = class(TQuickRep)
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    qrlJumlah: TQRLabel;
    qrlRetur: TQRLabel;
    qrlPembelian: TQRLabel;
    qrlTanggal: TQRLabel;
    qrlCompanyName: TQRLabel;
    qrlCompanyAddress: TQRLabel;
    qrlCompanyContact: TQRLabel;
    qrlPeriode: TQRLabel;
    QRLabel17: TQRLabel;
    shpDetail: TQRShape;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    QRShape3: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData2: TQRSysData;
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
  qrpReportPembelian: TqrpReportPembelian;

implementation

uses Subroutines;

const
  colTgl    = 1;
  colCaraBayar = 2;
  colJualBarangPokok = 3;
  colJualBarang   = 4;
  colJualBarangProfit   = 5;


  colDisc   = 6;
  colNetPokok    = 7;
  colNet    = 8;

{$R *.DFM}

{ TqrpReportPenjualan1 }

procedure TqrpReportPembelian.Executes(AGrid: TAdvStringGrid);
begin
  Grid:= AGrid;
  qrlCompanyName.Caption   := CompanyProfile.FCompanyName;
  qrlCompanyAddress.Caption:= CompanyProfile.FAddress;
  qrlCompanyContact.Caption:= CompanyProfile.FTelp1;
  qrlPeriode.Caption:= CaptionPeriode(GlobalPeriode.OpPeriodeAwal1, GlobalPeriode.PeriodeAwal1, GlobalPeriode.PeriodeAkhir1);

  i:= 1;
  PreviewModal;
end;

procedure TqrpReportPembelian.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  i:= 1;
end;

procedure TqrpReportPembelian.QuickRepNeedData(Sender: TObject;
  var MoreData: Boolean);
begin
  MoreData:= i < Grid.RowCount;
  if MoreData then begin
    shpDetail.Enabled:= (i = Grid.RowCount-1);
    qrlTanggal.Caption:= '';
    qrlPembelian.Caption:= '';
    qrlRetur.Caption:= '';
    qrlJumlah.Caption:= '';

    qrlTanggal.Caption:= Grid.Cells[colTgl, i];

   { if not Grid.IsMergedCell(colCode,i) then begin
      qrlNama.Caption:= Grid.Cells[colStuk, i];
      qrlKode.font.Style := [];
      qrlSubtotal.font.Style := [];
    end
    else begin
        qrlKode.font.Style := [fsBold];
        qrlSubtotal.font.Style := [fsBold];
    end;}
    qrlPembelian.Caption:= Grid.Cells[colJualBarangPokok, i];
    qrlRetur.Caption:= Grid.Cells[colJualBarangProfit, i];
    qrlJumlah.Caption:= Grid.Cells[colNet, i];
    Inc(i);
  end;
end;

end.
