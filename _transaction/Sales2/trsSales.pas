unit trsSales;
{  copyright (c) InVisi
  01.08.07  Chan--> tambah fungsi edit trans
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, ComCtrls, AdvEdit,DateUtils,
  SUIImagePanel, ToolWin, ExtCtrls, Mask, Math, StrUtils,
  UMaster, UTransaction, registry;

type
  TfrmTrsSales = class(TForm)
    MainPanel: TPanel;
    ToolBar1: TToolBar;
    tbtNew: TToolButton;
    tbtSave: TToolButton;
    ToolButton5: TToolButton;
    tbtDelete: TToolButton;
    suiPanel1: TsuiPanel;
    suiPanel2: TsuiPanel;
    asgTrans: TAdvStringGrid;
    txtSubtotal: TAdvEdit;
    txtTotal: TAdvEdit;
    chkPayed: TCheckBox;
    txtDiscount: TAdvEdit;
    txtBayar: TAdvEdit;
    txtSisa: TAdvEdit;
    txtNoTrans: TAdvEdit;
    txtRelasi: TAdvEdit;
    btnLookUpRelasi: TButton;
    btnNewRelasi: TButton;
    txtInfo: TAdvEdit;
    dtpTrans: TDateTimePicker;
    Label2: TLabel;
    txtKeterangan: TAdvEdit;
    txtKurs: TAdvEdit;
    txtContact: TAdvEdit;
    txtCity: TAdvEdit;
    txtAddress: TAdvEdit;
    tbtPrint: TToolButton;
    txtGaransi: TAdvEdit;
    dtpGaransi: TDateTimePicker;
    CheckBox1: TCheckBox;
    mmoPesan: TMemo;
    txtTelahBayar: TAdvEdit;
    chkUmum: TCheckBox;
    procedure asgTransCanEditCell(Sender: TObject; ARow, ACol: Integer;
      var CanEdit: Boolean);
    procedure asgTransCellValidate(Sender: TObject; Col, Row: Integer;
      var Value: String; var Valid: Boolean);
    procedure asgTransGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure asgTransGetEditorType(Sender: TObject; ACol, ARow: Integer;
      var AEditor: TEditorType);
    procedure asgTransKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtRelasiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLookUpRelasiClick(Sender: TObject);
    procedure txtKursKeyPress(Sender: TObject; var Key: Char);
    procedure txtSubtotalValueValidate(Sender: TObject; value: String;
      var IsValid: Boolean);
    procedure txtDiscountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnNewRelasiClick(Sender: TObject);
    procedure tbtNewClick(Sender: TObject);
    procedure tbtSaveClick(Sender: TObject);
    procedure tbtDeleteClick(Sender: TObject);
    procedure dtpTransChange(Sender: TObject);
    procedure txtBayarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure txtBayarChange(Sender: TObject);
    procedure txtKeteranganKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbtPrintClick(Sender: TObject);
    procedure asgTransCanAddRow(Sender: TObject; var CanAdd: Boolean);
    procedure txtGaransiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    MstItem: TMstItem;
    trsMaster: TTrsMaster;
    MASTER_PURPOSE: string;
    EDIT_MODE : boolean;
    procedure ArrangeColSize;
    procedure initGrid;
    procedure summery(HitungBayar: boolean);
    procedure OnChangeBayar();
    procedure ResetForm;
    procedure getSerial(row: integer; code: string);
    procedure RecodeDate;
    function getRelation: boolean;
    function NewRelation: boolean;
    function getItem(row, id: integer; code: string): boolean;

    function LookupData(id: integer): boolean;
    function LoadData(id: integer): boolean;
    function SaveData: boolean;
    function IsValid: boolean;

    procedure ReadWritePesan(write: boolean);

  public
    procedure Execute(id: integer; purpose: string);
    procedure VewDetail(id: integer; purpose:string;aEditMode:boolean=False);
  end;

var
  frmTrsSales: TfrmTrsSales;

implementation

uses AutoSimply, UConst, un_ryu, DBConnection, Subroutines, MainMenu,
  MstRelation, LOVNew, UConstTools, trsSalesPrint;

const
  LOOK_RELASI = 1;
  LOOK_ITEM   = 2;
  LOOK_SERI   = 3;

  colNo       = 0;
  colCode     = 1;
  colNama     = 2;
  colSeri     = 3;
  colRpBeli   = 4;
  colKursBeli = 5;
  colRpJual   = 6;
  colKursJual = 7;
  colRpShow   = 8;
  colQty      = 9;
  colAmount   = 10;
  colDisc     = 11;
  colTotal    = 12;
  colId       = 13;

{$R *.dfm}

{ TfrmTrsPurchase }

procedure TfrmTrsSales.ArrangeColSize;
begin
  asgTrans.AutoSizeColumns(True, 3);
  asgTrans.ColWidths[colRpBeli  ]:= 0; // request 0208
  asgTrans.ColWidths[colKursBeli]:= 0; // request
  asgTrans.ColWidths[colKursJual]:= 80;
  asgTrans.ColWidths[colRpShow  ]:= 80;
  asgTrans.ColWidths[colRpJual  ]:= 80;
  asgTrans.ColWidths[colQty     ]:= 50;
  asgTrans.ColWidths[colAmount  ]:= 85;
  asgTrans.ColWidths[colDisc    ]:= 60;
  asgTrans.ColWidths[colTotal   ]:= 85;
  if GlobalSystemUser.AccessLevel >= LEVEL_DEVELOPER then Exit;
  asgTrans.ColWidths[colId]:= 0;
end;

function TfrmTrsSales.getItem(row, id: integer; code: string): boolean;
var vValue:string; vValid: boolean;
begin

  MstItem.Reset;
  MstItem.ItemId:= id;
  MstItem.ItemCode:= code;
  Result:= MstItem.SelectInDB;
  if Result then begin
    asgTrans.Cells[colNama,    row]:= MstItem.ItemName;
    asgTrans.Cells[colCode,    row]:= MstItem.ItemCode;
//    asgTrans.Floats[colRpBeli, row]:= MstItem.PurchasePrice;
    asgTrans.Cells[colSeri,    row]:= '';
//    asgTrans.Floats[colKursBeli,row]:= TTrsPurchase.getKursValue(MstItem.ItemId);
    asgTrans.Floats[colRpJual, row]:= MstItem.SalesPrice;
    //asgTrans.Floats[colRpShow, row]:= MstItem.SalesPrice;

    vValue:= asgTrans.Cells[colRpJual, row];
    asgTransCellValidate(Self,colRpJual,row,vValue,vValid);

    asgTrans.Ints[colId,       row]:= MstItem.ItemId;
    ArrangeColSize;
  end
  else inform('Barang tidak ditemukan.');
end;

function TfrmTrsSales.getRelation: boolean;
var MstRelasi: TMstRelation;
begin
  MstRelasi:= TMstRelation.Create();
  MstRelasi.RelationId  := txtRelasi.Tag;
  MstRelasi.RelationCode:= txtRelasi.Text;
  Result:= MstRelasi.SelectInDB;
  chkUmum.Checked  := not Result;
  chkUmum.Enabled  := not Result;
  if Result then begin

    txtRelasi.Clear;
    txtRelasi.Tag  := MstRelasi.RelationId;
    txtRelasi.Text := MstRelasi.RelationCode;
    txtInfo.Text   := MstRelasi.RelationName;
    txtContact.Text:= MstRelasi.Phone + ifthen(MstRelasi.Phone <> '', ' / ') + MstRelasi.PhoneCell;
    txtAddress.Text:= MstRelasi.Address;
    txtCity.Text   := MstRelasi.City;
  end;
  MstRelasi.Free;
end;

procedure TfrmTrsSales.initGrid;
begin
  asgTrans.Clear;
  ResetGrid(asgTrans, 3, 15, 2,1);
  asgTrans.MergeCells(colNo,     0,1,2);
  asgTrans.MergeCells(colCode,   0,1,2);
  asgTrans.MergeCells(colNama,   0,1,2);
  asgTrans.MergeCells(colSeri,   0,1,2);

  asgTrans.MergeCells(colQty,    0,1,2);
  asgTrans.MergeCells(colAmount, 0,1,2);
  asgTrans.MergeCells(colDisc,   0,1,2);
  asgTrans.MergeCells(colTotal,  0,1,2);
//  asgTrans.MergeCells(colRpBeli, 0,2,1);
  asgTrans.MergeCells(colRpJual, 0,3,1);


  asgTrans.Cells[colNo,     0]:= 'No';
  asgTrans.Cells[colCode,   0]:= 'Kode';
  asgTrans.Cells[colNama,   0]:= 'Nama';
  asgTrans.Cells[colSeri,   0]:= 'Seri';
  asgTrans.Cells[colRpJual, 0]:= 'Hrg Jual';


  asgTrans.Cells[colQty,    0]:= 'Qty';
  asgTrans.Cells[colAmount, 0]:= 'Amount';
  asgTrans.Cells[colDisc,   0]:= 'Disc';
  asgTrans.Cells[colTotal,  0]:= 'Total';
  //asgTrans.Cells[colRpBeli, 0]:= 'Harga Beli';
  //asgTrans.Cells[colRpBeli, 1]:= 'Rp';
  asgTrans.Cells[colKursBeli, 1]:= '$';

  asgTrans.Cells[colRpJual,   1]:= 'Rp';
  asgTrans.Cells[colKursJual, 1]:= '$';
  asgTrans.Cells[colRpShow,   1]:= 'Tampil';

  asgTrans.ColumnSize.Stretch:= True;
  ArrangeColSize;
end;

function TfrmTrsSales.IsValid: boolean;
var i: integer; vValid,harus_di_lunasi: boolean;
 vValue:string;
begin
  Result:= False;
  harus_di_lunasi:= (MASTER_PURPOSE = TRANS_SALES_CASH) and (StrFmtToFloatDef(txtBayar.Text, 0) <> StrFmtToFloatDef(txtTotal.Text, 0));
  if harus_di_lunasi then
    if Confirmed('Penjulan belum dibayar, Batalkan?') then begin
      txtBayar.SetFocus;
      Exit;
    end;

  if CekInput(Result, (MASTER_PURPOSE = TRANS_SALES_CASH) or ((MASTER_PURPOSE = TRANS_SALES_CREDIT) and (txtRelasi.Tag <> 0)),
    'Customer belum diisi.', txtRelasi) then begin
    Result:= False;
    for i:= 2 to asgTrans.RowCount-1 do
      if not IsClear(asgTrans, i, colId) then begin
        Result:= True;
       // exit;
      end;

  end;
  if not Result then begin
    Alert('Tidak ada data.');
    asgTrans.SetFocus;
    exit;
  end;

  //cek validasi grid
  for i:= 2 to asgTrans.RowCount-1 do begin
    if IsClear(asgTrans,i,colID) then Continue;
    vValue := asgTrans.Cells[colQty,i];
    asgTransCellValidate(Self,colQty,i,vValue,vValid);
    Result := vValid;
    if not Result then begin
      asgTrans.Col := colQty;
      asgTrans.Row := i;
      Break;
      Exit;
    end;
  end;

end;

function TfrmTrsSales.LookupData(id: integer): boolean;
var vid: integer;
begin

  Result:= False;
  //01.08.07  Chan-->
  if not EDIT_MODE then begin
      if txtNoTrans.Tag <> 0 then exit;
      case id of
        LOOK_RELASI:
        begin
          txtRelasi.Tag := StrToInt(frmLOVNew.Execute(LOV_CUSTOMER));
          if txtRelasi.Tag <> 0 then Result:= getRelation;
          if Result then txtKurs.SetFocus;
        end;

        LOOK_ITEM:
        begin
          vid:= StrToInt(frmLOVNew.Execute(LOV_ITEM, '','',0));
          if vid <> 0 then Result:= getItem(asgTrans.Row, vid, '');
        end;

        LOOK_SERI: getSerial(asgTrans.Row, frmLOVNew.Execute(LOV_SERIAL, '',INVENT_GOOD,-1,0,
          asgTrans.Ints[colId, asgTrans.Row]));
      end;
   end
   else begin
      case id of
        LOOK_RELASI:
        begin
          txtRelasi.Tag := StrToInt(frmLOVNew.Execute(LOV_CUSTOMER));
          if txtRelasi.Tag <> 0 then Result:= getRelation;
          if Result then txtKurs.SetFocus;
        end;

        LOOK_ITEM:
        begin
          vid:= StrToInt(frmLOVNew.Execute(LOV_ITEM, '','',0));
          if vid <> 0 then Result:= getItem(asgTrans.Row, vid, '');
        end;

        LOOK_SERI: getSerial(asgTrans.Row, frmLOVNew.Execute(LOV_SERIAL, '',INVENT_GOOD,-1,0,
          asgTrans.Ints[colId, asgTrans.Row]));
      end;
   end;

end;

procedure TfrmTrsSales.ResetForm;
begin
  //01.08.07  Chan-->
  tbtSave.Caption := IfThen(EDIT_MODE,'Update','Save');

  txtNoTrans.Tag   := 0;
  txtRelasi.Tag    := 0;
  tbtSave.Enabled  := True;
  tbtDelete.Enabled:= True;
  txtNoTrans.Clear;
  txtKurs.Text:= '1';
  mmoPesan.Clear;

  txtRelasi.Clear;
  txtKeterangan.Clear;
  txtSubtotal.Clear;
  txtTotal.Clear;
  txtBayar.Clear;
  txtSisa.Clear;
  txtTelahBayar.Clear;
  txtInfo.Clear;
  txtContact.Clear;
  txtCity.Clear;
  txtAddress.Clear;
  chkUmum.Enabled := True;
  chkUmum.Checked := False;
  txtDiscount.Clear;
  chkPayed.Checked:= False;
  dtpTrans.Date:= Now;
  initGrid;
  txtNoTrans.Text:= trsMaster.getNextNum(dtpTrans.Date, MASTER_PURPOSE);
  Self.Caption:= 'Transaksi '+TTrsMaster.getDescType(MASTER_PURPOSE); //'Penjualan';
  ReadWritePesan(False);

end;

function TfrmTrsSales.SaveData: boolean;
var i: integer;
begin
  chkPayed.Checked:= txtTotal.Text = txtBayar.Text;
  trsMaster.Reset;
  trsMaster.TransId  := txtNoTrans.Tag;
  trsMaster.TransType:= MASTER_PURPOSE;
  trsMaster.TransNum := txtNoTrans.Text;
  trsMaster.TransDate:= dtpTrans.Date;
  trsMaster.MstRelation.RelationId:= txtRelasi.Tag;
  trsMaster.Notes   := txtKeterangan.Text;

  trsMaster.Subtotal:= StrFmtToFloatDef(txtSubtotal.Text, 0); //colTotal:= hrg * qty -disc
  trsMaster.Discount:= StrFmtToFloatDef(txtDiscount.Text, 0); //discount master
  trsMaster.Total   := StrFmtToFloatDef(txtTotal.Text, 0);       //discount master
  trsMaster.Bayar   := StrFmtToFloatDef(txtBayar.Text, 0)+StrFmtToFloatDef(txtTelahBayar.Text, 0);
  trsMaster.Sisa    := StrFmtToFloatDef(txtSisa.Text, 0);
  trsMaster.Kurs    := StrFmtToFloatDef(txtKurs.Text, 0);
  trsMaster.Payed   := chkPayed.Checked;
  trsMaster.UserId  := GlobalSystemUser.UserId;
  trsMaster.Expired := dtpGaransi.Date;
  trsMaster.Pesan   := mmoPesan.Text;
  //if UpperCase(txtInfo.Text) = 'UMUM' then
  if chkUmum.Checked then
    trsMaster.Info := txtInfo.Text+';'+txtAddress.Text+';'+txtContact.Text;
//amount = sebelum dikurangi discount
  for i:= 2 to asgTrans.RowCount-1 do
  if not IsClear(asgTrans, i, colId) then
  begin
    trsMaster.Sales.Add(0,0, asgTrans.Ints[colId, i],
    IfThen(MASTER_PURPOSE = TRANS_SALES_RETUR, DB_CR_TYPE_DEBIT, DB_CR_TYPE_CREDIT),
    asgTrans.Floats[colQty, i], asgTrans.Floats[colRpJual, i],
    asgTrans.Floats[colAmount, i], asgTrans.Floats[colDisc, i],
    asgTrans.Floats[colRpShow, i], asgTrans.Cells[colSeri, i],
    false, '', asgTrans.Floats[colKursJual, i], '');
  end;

  //01.08.07  Chan-->
  if not EDIT_MODE then begin
    if txtNoTrans.Tag = 0 then
      Result:= trsMaster.SaveToDb
    else Result:= False;
    txtNoTrans.Tag:= trsMaster.TransId;
  end
  else begin
    trsMaster.TransId := txtNoTrans.Tag;
    Result := trsMaster.UpdateToDb;
  end;

  txtTelahBayar.Text := txtBayar.Text;
  tbtSave.Enabled:= not Result;
  tbtDelete.Enabled:= not Result;

  if Result then ReadWritePesan(True);
end;

procedure TfrmTrsSales.asgTransCanEditCell(Sender: TObject; ARow,
  ACol: Integer; var CanEdit: Boolean);
begin
//01.08.07  Chan-->
  if not EDIT_MODE then
    CanEdit:= (ACol in[colCode, colSeri, colRpJual, colKursJual,
        colRpShow, colQty, colDisc]) and (txtNoTrans.Tag = 0)
  else
     CanEdit:= (ACol in[colCode, colSeri, colRpJual, colKursJual,
        colRpShow, colQty, colDisc]) and (txtNoTrans.Tag > 0);
end;

procedure TfrmTrsSales.asgTransCellValidate(Sender: TObject; Col,
  Row: Integer; var Value: String; var Valid: Boolean);
  var kurs, rp, hrg: double;
  vMsg:string;
begin
  Valid:= Value <> '';
  if Valid then
  case Col of
    colCode: getItem(Row, 0, Value);
    colSeri:
    begin
      valid:= TInvSerialBalance.isExist(Value, asgTrans.Ints[colId, Row], True, INVENT_GOOD);
      if not Valid then begin
         Alert('Seri tidak terdaftar / stok kosong.');
         Col := colSeri;
         Value := '';
      end;

    end;

    colRpJual, colQty, colDisc, colKursJual:
    begin

      if Col = colQty then
      begin
        Valid:= (StrFmtToFloatDef(Value,0) > 0);
        if not valid then
           vMsg := 'Quantity tidak boleh 0';

        if Valid then
          //jika nomor seri kosong
          if asgTrans.Cells[colSeri,row] = '' then
            Valid := StrFmtToFloatDef(Value,0) <= TMstItem.GetSaldoAkhir(asgTrans.Ints[colId,Row],ServerNow, INVENT_GOOD)
          else
             valid:= TInvSerialBalance.isExist(asgTrans.Cells[colSEri,row], asgTrans.Ints[colId, Row], True, INVENT_GOOD) and
               ( value='1');

        if not Valid then
          vMsg := ('Nilai stok tidak mencukupi!');
        if not Valid then begin
          Alert(vMsg);
          Col := colQty;
          Value := '0';
          asgTrans.Floats[colQty,Row] := 0;
        end;

       // if not Valid then Value:= '1';
      end;

      kurs:= asgTrans.Floats[colKursJual, Row];// * StrFmtToFloatDef(txtKurs.Text,0);
      rp  := (asgTrans.Floats[colRpJual, Row]);

      hrg:= 0;
      if (rp <> 0) and (kurs <> 0) then begin
        Inform('Pilih satu harga (Rp atau $).');
      end
      else hrg:= IfThen(rp <> 0, rp, kurs);

      if (Sender is TAdvStringGrid) or (asgTrans.Floats[colRpShow, Row] = 0) then
        asgTrans.Cells[colRpShow, Row]:= FloatToStrFmt(hrg);

      if kurs <> 0 then
        asgTrans.Cells[colAmount, Row]:= FloatToStrFmt(StrFmtToFloatDef(txtKurs.Text,0) * hrg * asgTrans.Floats[colQty, Row])
      else
        asgTrans.Cells[colAmount, Row]:= FloatToStrFmt( hrg * asgTrans.Floats[colQty, Row]);

      asgTrans.Cells[colTotal, Row]:= FloatToStrFmt(
        asgTrans.Floats[colAmount, Row] - asgTrans.Floats[colDisc, Row]);

      summery(Sender is TAdvStringGrid);
      Value:=  FloatToStrFmt(StrFmtToFloatDef(Value,0));

    end;
  end;
  ArrangeColSize;
end;

procedure TfrmTrsSales.asgTransGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if ARow < 2 then HAlign:= taCenter
  else if (ACol = colNo) or (ACol > colSeri) then
    HAlign:= taRightJustify;
end;

procedure TfrmTrsSales.asgTransGetEditorType(Sender: TObject; ACol,
  ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
    colCode: AEditor:= edUpperCase;
    colRpJual, colRpShow, colQty, colDisc,colKursJual: AEditor:= edFloat;
  end;
end;

procedure TfrmTrsSales.asgTransKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_return: GoNextColumn(Sender);
    vk_F2:
      if (asgTrans.Col = colSeri) then LookupData(LOOK_SERI)
      else LookupData(LOOK_ITEM);

    vk_control:
    begin
      summery(True);
      txtDiscount.SetFocus;
    end;
  end;
end;

procedure TfrmTrsSales.txtRelasiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    vk_return:
      if not getRelation then
        LookupData(LOOK_RELASI);

    vk_F2: LookupData(LOOK_RELASI);

    ord('0')..ord('9'), VK_NUMPAD0..VK_NUMPAD9 : txtRelasi.Tag:= 0;
  end;
  chkUmum.Enabled := txtRelasi.Tag >0;
end;

procedure TfrmTrsSales.btnLookUpRelasiClick(Sender: TObject);
begin
  LookupData(LOOK_RELASI)
end;

procedure TfrmTrsSales.txtKursKeyPress(Sender: TObject; var Key: Char);
begin
  key:= IgnoreChar(Key)
end;

procedure TfrmTrsSales.txtSubtotalValueValidate(Sender: TObject;
  value: String; var IsValid: Boolean);
begin
  AdvEdtFloatFmt(Sender, value);
end;

procedure TfrmTrsSales.summery(HitungBayar: boolean);
var subtotal, discount, bayar,telahTerbayar: double;
begin

  subtotal:= asgTrans.ColumnSum(colTotal, 2, asgTrans.RowCount-1);
  discount:= StrFmtToFloatDef(txtDiscount.Text,0);
  ///chan
  telahTerbayar:= StrFmtToFloatDef(txtTelahBayar.Text,0);

  if (MASTER_PURPOSE = TRANS_SALES_CASH) and (HitungBayar) then
    txtBayar.Text:= FloatToStrFmt(subtotal - discount-telahTerbayar)
  else if (MASTER_PURPOSE = TRANS_SALES_CREDIT) and (HitungBayar) then
    txtBayar.Text:= '0';

  bayar   := StrFmtToIntDef(txtBayar.Text,0);
  txtSubtotal.Text:= FloatToStrFmt(subtotal);
  txtTotal.Text:= FloatToStrFmt(subtotal - discount);
  txtSisa.Text:= FloatToStrFmt(subtotal - discount - bayar-telahTerbayar);

  chkPayed.Checked:= StrFmtToFloatDef(txtSisa.Text, 0) = 0;
end;

procedure TfrmTrsSales.txtDiscountKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then begin
    summery(True);
    txtBayar.SetFocus;
  end;
end;

function TfrmTrsSales.NewRelation: boolean;
begin
  txtRelasi.Tag := frmMstRelation.Execute(PS_TYPE_CUSTOMER);
  Result:= getRelation;
end;

procedure TfrmTrsSales.btnNewRelasiClick(Sender: TObject);
begin
  NewRelation
end;

procedure TfrmTrsSales.tbtNewClick(Sender: TObject);
begin
  ResetForm;
  txtRelasi.SetFocus;
end;

procedure TfrmTrsSales.Execute(id: integer; purpose: string);
begin
  EDIT_MODE := False;
  MASTER_PURPOSE:= purpose;
  trsMaster:= TTrsMaster.Create(MASTER_PURPOSE);
  MstItem:= TMstItem.Create();

  ResetForm;
  LoadData(id);
//  if id <> 0 then ShowForm(Self)
  //else
  Run(Self)
end;

procedure TfrmTrsSales.tbtSaveClick(Sender: TObject);
begin
  if IsValid then
   if SaveData then
     tbtPrint.Click
end;

procedure TfrmTrsSales.tbtDeleteClick(Sender: TObject);
begin

  if asgTrans.RowCount > 3 then begin
    asgTrans.ClearRows(asgTrans.Row, 1);
    asgTrans.RemoveRows(asgTrans.Row, 1);
  end
  else if asgTrans.RowCount > 2 then
    asgTrans.ClearRows(asgTrans.Row, 1);

  summery(true);
end;

procedure TfrmTrsSales.dtpTransChange(Sender: TObject);
begin
  txtNoTrans.Text:= trsMaster.getNextNum(dtpTrans.Date, MASTER_PURPOSE);
end;

procedure TfrmTrsSales.txtBayarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then summery(False);
end;

function TfrmTrsSales.LoadData(id: integer): boolean;
var i: integer;
begin
  trsMaster.Reset;
  trsMaster.TransId:= id;
  if not trsMaster.SelectIndB(id) then Exit;
  txtNoTrans.Tag:= trsMaster.TransId;
  txtRelasi.Tag:= trsMaster.MstRelation.RelationId;
  txtNoTrans.Text:= trsMaster.TransNum;
  txtRelasi.Text:= trsMaster.MstRelation.RelationCode;
  txtInfo.Text:= trsMaster.MstRelation.RelationName;

  txtContact.Text:= trsMaster.MstRelation.Phone + ifthen(trsMaster.MstRelation.Phone <> '', ' / ') + trsMaster.MstRelation.PhoneCell;
  txtAddress.Text:= trsMaster.MstRelation.Address;
  txtCity.Text   := trsMaster.MstRelation.City;
  if trsMaster.MstRelation.RelationId = 0 then begin
    txtInfo.Text := EkstrakString(trsMaster.Info,';',1);
    txtAddress.Text := EkstrakString(trsMaster.Info,';',2);
    txtContact.Text := EkstrakString(trsMaster.Info,';',3);
  end;
  dtpTrans.Date:= trsMaster.TransDate;
  dtpGaransi.Date:= trsMaster.Expired;
  txtGaransi.IntValue :=  MonthsBetween(trsMaster.TransDate,trsMaster.Expired); //round(trsMaster.Expired - trsMaster.TransDate);
  txtKeterangan.Text:= trsMaster.TransNum;
  chkPayed.Checked:= trsMaster.Bayar = trsMaster.Total;

  txtSubtotal.Text:= FloatToStrFmt(trsMaster.Subtotal);
  txtDiscount.Text:= FloatToStrFmt(trsMaster.Discount);
  txtTotal.Text:= FloatToStrFmt(trsMaster.Total);
  txtBayar.Text:= FloatToStrFmt(trsMaster.Bayar);
  txtKurs.Text:= FloatToStrFmt(trsMaster.Kurs);
  txtSisa.Text:= FloatToStrFmt(trsMaster.Sisa);
  txtTelahBayar.Text:= FloatToStrFmt(trsMaster.Bayar);
  trsMaster.Sales.LoadFromDb(id);
  mmoPesan.Text:= trsMaster.Pesan; 

  for i:= 0 to trsMaster.Sales.Count-1 do begin
    asgTrans.Ints[colId, i+2]:= trsMaster.Sales[i].MstItem.ItemId;
    asgTrans.Ints[colNo, i+2]:= i+1;
    asgTrans.Cells[colCode, i+2]:= trsMaster.Sales[i].MstItem.ItemCode;
    asgTrans.Cells[colNama, i+2]:= trsMaster.Sales[i].MstItem.ItemName;
    asgTrans.Cells[colSeri, i+2]:= trsMaster.Sales[i].Serial;
    asgTrans.Floats[colQty, i+2]:= trsMaster.Sales[i].Quantity;
//    asgTrans.Floats[colKursBeli,i+2]:= TTrsPurchase.getKursValue(trsMaster.Sales[i].MstItem.ItemId);
//    asgTrans.Floats[colRpBeli, i+2]:= trsMaster.Sales[i].MstItem.PurchasePrice;
    asgTrans.Floats[colKursJual, i+2]:= trsMaster.Sales[i].Kurs;
    asgTrans.Floats[colRpJual, i+2]:= trsMaster.Sales[i].Price;
    asgTrans.Floats[colRpShow, i+2]:= trsMaster.Sales[i].PriceView;

    asgTrans.Floats[colAmount, i+2]:= trsMaster.Sales[i].Amount;
    asgTrans.Floats[colDisc, i+2]:= trsMaster.Sales[i].Discount;
    asgTrans.Floats[colTotal, i+2]:= trsMaster.Sales[i].Amount - trsMaster.Sales[i].Discount;
    asgTrans.AddRow;
  end;
  ArrangeColSize;
  //01.08.07  Chan-->
  if not EDIT_MODE then begin
    tbtSave.Enabled:= False;
    tbtDelete.Enabled:= False;
  end
  else begin
    tbtSave.Enabled:= True;
    tbtDelete.Enabled:= True;
  end;
end;

procedure TfrmTrsSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  MstItem.Free;
  trsMaster.Free;
end;

procedure TfrmTrsSales.getSerial(row: integer; code: string);
var vValue:string; vValid: boolean;
begin
  if TInvSerialBalance.isExist(code, asgTrans.Ints[colId, row],true, INVENT_GOOD) then begin
    asgTrans.Cells[colSeri, row]:= code;
//    asgTrans.Floats[colKursBeli,row]:= TTrsPurchase.getKursValue(asgTrans.Ints[colId, row], code);
   asgTrans.Ints[colQty, row]:= 1;
   vValue:= '1';
   asgTransCellValidate(Self,colQty,row,vValue,vValid);
    ArrangeColSize;
 end
 else Alert('seri tidak tersedia/stok tidak mencukupi.');

end;

procedure TfrmTrsSales.VewDetail(id: integer; purpose: string;aEditMode:boolean);
begin
  EDIT_MODE := aEditMode;
  MASTER_PURPOSE:= purpose;
  trsMaster:= TTrsMaster.Create(MASTER_PURPOSE);
  MstItem:= TMstItem.Create();

  ResetForm;
  LoadData(id);
  ShowForm(Self)
end;

procedure TfrmTrsSales.OnChangeBayar;
var subtotal, discount, total,telahBayar, bayar: double;
begin
  subtotal:= StrFmtToFloatDef(txtSubtotal.Text,0);
  discount:= StrFmtToFloatDef(txtDiscount.Text,0);
  bayar   := StrFmtToFloatDef(txtBayar.Text,0);
  //chan  01.08.07
  telahBayar   := StrFmtToFloatDef(txtTelahBayar.Text,0);

  txtTotal.Text:= FloatToStrFmt(subtotal - discount);
  txtSisa.Text:= FloatToStrFmt(subtotal - discount - bayar-telahBayar);
  chkPayed.Checked:= StrFmtToFloatDef(txtSisa.Text, 0) = 0;
end;

procedure TfrmTrsSales.txtBayarChange(Sender: TObject);
begin
  OnChangeBayar;
end;

procedure TfrmTrsSales.txtKeteranganKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then begin
    asgTrans.SetFocus;
    asgTrans.Col:= colCode;
    asgTrans.Row:= 2;
  end;
end;

procedure TfrmTrsSales.tbtPrintClick(Sender: TObject);
begin
  qrpTrsSales.Executes(txtNoTrans.Tag, MASTER_PURPOSE, not CheckBox1.Checked);
end;

procedure TfrmTrsSales.asgTransCanAddRow(Sender: TObject;
  var CanAdd: Boolean);
begin
//  asgTransCellValidate(Self,asgTrans.Col,asgTrans.Row,);
end;

procedure TfrmTrsSales.txtGaransiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_tab then RecodeDate;
end;

procedure TfrmTrsSales.RecodeDate;
begin
  dtpGaransi.Date:= GetMonthMode(dtpTrans.Date, txtGaransi.IntValue)
end;

procedure TfrmTrsSales.ReadWritePesan(write: boolean);
var reg: TRegistry;
begin
  try
    reg:= TRegistry.Create;
    try
      reg.OpenKey('\Software\InVisi\'+Application.Name+'\Message', write);
      if write then
        reg.WriteString('Sales', mmoPesan.Text)
      else
        mmoPesan.Text:= reg.ReadString('Sales');
    except
      //on ERegistryException do reg.WriteString('Sales', 'Pesan: ');
    end;
  finally
    reg.CloseKey;
    reg.Free;
  end;

end;

end.
