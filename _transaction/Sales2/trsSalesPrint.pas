unit trsSalesPrint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, DB, ADODB, strUtils;

type
  TqrpTrsSales = class(TQuickRep)
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    qrlRepTitle: TQRLabel;
    qrlCompanyAddress: TQRLabel;
    qrlCompanyContact: TQRLabel;
    qrlCompanyName: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    qrlHarga: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    qrdHarga: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel8: TQRLabel;
    qrlMemo: TQRMemo;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRDBText17: TQRDBText;
    QRShape5: TQRShape;
    QRDBText18: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRExpr1: TQRExpr;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRDBText9: TQRDBText;
    QRMemo3: TQRMemo;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRShape1: TQRShape;
    QRImage1: TQRImage;
  private
  public
    procedure Executes(id: integer; MasterPurpose: string; AJustPreview: boolean);
  end;

var
  qrpTrsSales: TqrpTrsSales;

implementation

uses DBConnection, UConst, Subroutines, MainMenu;

{$R *.DFM}

{ TqrpTrsSales }

procedure TqrpTrsSales.Executes(id: integer; MasterPurpose: string; AJustPreview: boolean);
var vSql, ss:string;
begin

  if id = 0 then exit;
  QRImage1.Picture.Bitmap.Handle := LoadBitmap(ImageDll, 'logo');
  qrlCompanyName.Caption:= CompanyProfile.FCompanyName;
  qrlCompanyAddress.Caption:= CompanyProfile.FAddress;
  qrlCompanyContact.Caption:=
    CompanyProfile.FTelp1 +
    IfThen(CompanyProfile.FTelp1 <> '', ' / ') + CompanyProfile.FTelp2;
  qrpTrsSales.ReportTitle:= qrlRepTitle.Caption;
  ADOQuery1.Connection:= MyConnection.ADOConnection;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  vSql :=
  'select '+
  't.trans_id, t.trans_num, t.trans_date,  t.notes, t.discount, '+
  't.kurs, t.user_id, t.bayar, '+
  't.relation_id, r.relation_code, r.relation_name, r.address, r.city, r.phone, r.phone_cell, '+
  'd.item_id, d.quantity, d.discount as disc_detail, d.price_view, '+
  'd.serial, d.kurs as kurs_detail, i.item_code, i.item_name, c.code_name, t.expired, t.pesan, '+
  '(if (d.kurs <> 0, d.price_view * d.quantity, 0)) as sub_dollar_view, '+
  '(if (d.kurs <> 0, t.kurs * d.price_view * d.quantity, d.price_view * d.quantity)) as amount_view, '+
  '((if (d.kurs <> 0, t.kurs * d.price_view * d.quantity, d.price_view * d.quantity)) - d.discount) as total_view '+
  ',t.info '+
  'from trs_master t left join mst_relation r on t.relation_id = r.relation_id, '+
  'trs_sales d, mst_code c, mst_item i '+
  'where t.trans_id = d.trans_id and d.item_id = i.item_id and i.use_unit = c.code_id '+
  ' and t.trans_type = '+FormatSQLString(MasterPurpose)+
  ' and t.trans_id = '+FormatSQLNumber(id);
  ADOQuery1.SQL.Add(vSql );
  ADOQuery1.Open;
  qrlMemo.Lines.Clear;
  if ADOQuery1.RecordCount > 0 then begin

    {
    if ADOQuery1.FieldByName('price').AsFloat <> 0 then
    begin
     // qrdHarga.DataField:= 'price';
     // qrlHarga.Caption:= 'Harga (Rp)';
    end
    else if ADOQuery1.FieldByName('kurs_detail').AsFloat <> 0 then
    begin
     // qrdHarga.DataField:= 'kurs_detail';
      //qrlHarga.Caption:= 'Harga ($)';
    end;
    }
    qrlMemo.Lines.Add(ADOQuery1.FieldByName('relation_name').AsString);
    qrlMemo.Lines.Add(ADOQuery1.FieldByName('address').AsString);
    qrlMemo.Lines.Add(ADOQuery1.FieldByName('phone').AsString +
      IfThen(ADOQuery1.FieldByName('phone').AsString <> '', ' / ') +
             ADOQuery1.FieldByName('phone_cell').AsString);

    if ADOQuery1.FieldByName('relation_name').AsString = '' then begin
      qrlMemo.Lines.Clear;
      qrlMemo.Lines.Add(EkstrakString(ADOQuery1.FieldByName('info').AsString,';',1));
      qrlMemo.Lines.Add(EkstrakString(ADOQuery1.FieldByName('info').AsString,';',2));
      qrlMemo.Lines.Add(EkstrakString(ADOQuery1.FieldByName('info').AsString,';',3));
    end;
    QRMemo3.Lines.Add(ADOQuery1.FieldByName('pesan').AsString);
  end;
  if AJustPreview then
    qrpTrsSales.PreviewModal
  else qrpTrsSales.Print;

end;

end.
