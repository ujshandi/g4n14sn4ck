unit trsSalesGania;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, BaseGrid, AdvGrid, StdCtrls, AdvEdit, ComCtrls,
  SUIImagePanel, ToolWin, ExtCtrls,EpsonUtils,
  strUtils, Math, UMaster, UTransaction, Menus,
  frmDockForm, RAWPrinter;

type
  TfrmTrsSales = class(TDockForm)
    ToolBar1: TToolBar;
    tbtNew: TToolButton;
    tbtSave: TToolButton;
    ToolButton5: TToolButton;
    tbtDelete: TToolButton;
    suiPanel1: TsuiPanel;
    lblTransaksi: TLabel;
    dtpTransaction: TDateTimePicker;
    txtNotes: TAdvEdit;
    txtSpec: TAdvEdit;
    btnSpec: TButton;
    suiPanel3: TsuiPanel;
    grid: TAdvStringGrid;
    txtSubtotal: TAdvEdit;
    txtDisc1: TAdvEdit;
    txtTax: TAdvEdit;
    txtTotal: TAdvEdit;
    tbtPrintUlang: TToolButton;
    ToolButton2: TToolButton;
    tbtPost: TToolButton;
    txtOrder: TAdvEdit;
    btnOrder: TButton;
    Label2: TLabel;
    chkPpn: TCheckBox;
    btnSaveHolded: TToolButton;
    btnLoadHolded: TToolButton;
    RAWPrinter1: TRAWPrinter;
    txtTunai: TAdvEdit;
    Button1: TButton;
    procedure gridCanEditCell(Sender: TObject; ARow,
      ACol: Integer; var CanEdit: Boolean);
    procedure gridCellValidate(Sender: TObject; Col,
      Row: Integer; var Value: String; var Valid: Boolean);
    procedure gridGetAlignment(Sender: TObject; ARow,
      ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure gridGetEditorType(Sender: TObject; ACol,
      ARow: Integer; var AEditor: TEditorType);
    procedure gridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure txtSpecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtSpecKeyPress(Sender: TObject; var Key: Char);
    procedure btnSpecClick(Sender: TObject);
    procedure dtpExprKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpDelyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtpTransactionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdbTaxClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure getUnitList;
    procedure getUnit(Sender: TObject);
    procedure txtSubtotalValueValidate(Sender: TObject; value: String;
      var IsValid: Boolean);
    procedure tbtDeleteClick(Sender: TObject);
    procedure tbtSaveClick(Sender: TObject);
    procedure tbtNewClick(Sender: TObject);
    procedure txtDisc2KeyPress(Sender: TObject; var Key: Char);
    procedure txtDisc2Exit(Sender: TObject);
    procedure txtSpecEnter(Sender: TObject);
    procedure gridEnter(Sender: TObject);
    procedure tbtPostClick(Sender: TObject);
    procedure dtpTransactionChange(Sender: TObject);
    procedure txtNotesChange(Sender: TObject);
    procedure gridRowChanging(Sender: TObject; OldRow, NewRow: Integer;
      var Allow: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure txtDisc1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure txtTaxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure gridDblClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure chkPpnClick(Sender: TObject);
    procedure btnSaveHoldedClick(Sender: TObject);
    procedure btnLoadHoldedClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tbtPrintUlangClick(Sender: TObject);
  private
    MstItem: TMstItem;
    Trx: TTrsSales;
    ListUnit, lsGudang: TStringList;
    status_delete: word;
    OldValue: string;
    TransType : integer;
    procedure CalculateManualPPN();
    procedure CalculateBuangPPN();

    procedure InitGrid;
    procedure InitForm;
    procedure SetDisableEnable;
    procedure Calculate();overload;
    procedure Calculate(xrow: integer;isService:boolean=false);overload;

    procedure RemoveRow();
    procedure SavePostState(state: boolean);

    procedure SeekItem(ASearch: string);
    procedure getItem(var AItemCode: string; AItemID: integer; AQty: double);

    procedure SeekVendor;
    procedure getVendor(ACode: string; AID: integer);
    procedure LoadData(ID: integer);

    procedure HoldedTrx;
    procedure editItem();
    function isValid: boolean;
    function isSaved: boolean;
    function SaveHolded(): boolean;
    function LoadHolded(id:integer): boolean;
    procedure returTrans(id:integer);
    procedure Print();
  public
    procedure Execute(vPurpose, ID: integer); override;

  end;

var
  frmTrsSales: TfrmTrsSales;

implementation

uses MainMenu, UConst, Subroutines, MySQLConnector,
  LookupData, LookupTrx, uMysqlClient, MstItem, AutoStockLine, UConstTool,
  trsSalesHoldedList;

const
   colNo          = 0;
  colBarcode     = 1;
  colDesc        = 2;
  colQty         = 3;
  colUnit        = 4;
  colHrgDisplay  = 5;
  colTotal= 6;
  colItemId      =7 ;
  colProfit      = 8;
  colModID   = 9;
  colHBeli       = 10;  //hrg beli
  colStok       = 11;



  colLast       = 12;

{$R *.dfm}

{ TfrmTrsPurchaseOrder }

procedure TfrmTrsSales.Calculate;
var
  addt, total: double;
  i: integer;
begin
  total := grid.ColumnSum(colTotal,1, grid.RowCount-1);





  txtSubtotal.Text:= FloatToStrFmt(total);
//  txtDisc1.Text   := FloatToStrFmt(dis_tax + dis_nontax);
  txtTotal.Text   := FloatToStrFmt(total );//+ FormatSQLRound2(dpp * 0.1) + addt);

  //if (txtTax.Tag = 1) then CalculateManualPPN;
  if (chkPpn.Checked) then CalculateManualPPN;

end;

procedure TfrmTrsSales.Execute(vPurpose, ID: integer);
begin
  inherited;
  ToolBar1.ParentColor:= false;
  ToolBar1.Color:= clWhite;

  ListUnit:= TStringList.Create;
  lsGudang:= TStringList.Create;

//  TMstMaster_Arr.GetList(lsGudang, MST_TYPE_GUDANG);
//  NameValueListToValueList(lsGudang, cmbGudang.Items);
 // cmbGudang.ItemIndex:= -1;
 // cmbGudangChange(nil);

  MstItem  := TMstItem.Create;
  status_delete:= 0;
  Trx := TTrsSales.Create;
  InitForm;
  if (vPurpose=SALES_TYPE_RETUR) then
     returTrans(ID)
  else
    LoadData(ID);
  Run(Self);
end;

procedure TfrmTrsSales.getItem(var AItemCode: string; AItemID: integer;
  AQty: double);
var
  ItemCode: string; row, sameID:integer;

   qty: string; valid: boolean;

  function search_same_item(existID: integer): integer;
  var i: integer;
  begin
    Result:= 0;
    for i:= 1 to grid.RowCount-1 do
      if (grid.Ints[colItemID, i] = existID) then begin
        Result:= i;
        exit;
      end;
  end;

begin
  MstItem.Reset;
  MstItem.Barcode:= AItemCode;
  MstItem.ItemId := AItemID;
  MstItem.VendorID := txtSpec.Tag;
  row:= grid.Row;
  if MstItem.SelectInDB3 then begin

    ItemCode:= MstItem.Barcode;
    sameID:= search_same_item(MstItem.ItemId);

    // fungsi kumulatif ditutup coz transaksi pengen di Rekap dalam 1 hari
{    if (sameID <> 0) and (row <> sameID) then begin
      AItemCode:= '';
      grid.ClearRows(grid.Row,1);
      grid.Row:= sameID;
      row:= sameID;
      grid.Cells[colQty, row]:= FloatToStrFmt(grid.Floats[colQty, row] + AQty);
    end else begin}
      AItemCode:= MstItem.Barcode;

      grid.Cells[colDesc,     row]:= MstItem.ItemName;
//      grid.Cells[colBarCode,  row]:= MstItem.ItemCode;
      grid.Cells[colBarcode,  row]:= MstItem.ItemCode;
      grid.Ints[colItemId,    row]:= MstItem.ItemId;
      grid.Ints[colModID,     row]:= 1;
//      grid.Ints[colConvId,    row]:= 0;//MstItem.FItemConversion[0].ConvId;
      grid.Cells[colUnit,     row]:= TMstMaster.getName(MstItem.KemasanID); //MstItem.MstName;
      grid.Cells[colHrgDisplay,    row]:= FloatToStrFmt(MstItem.SellingPrice);
      grid.Cells[colHBeli,    row]:= FloatToStrFmt(MstItem.BuyingPrice);
   //   grid.Cells[colConv,     row]:= '1';//FloatToStrFmt(MstItem.FItemConversion[0].Conversion);
      grid.Cells[colQty,      row]:= FloatToStrFmt(AQty);
      grid.Cells[colTotal,    row]:= FloatToStrFmt(MstItem.BuyingPrice * AQty);
//      grid.Cells[colDisc1Tmp, row]:= '0';//FloatToStrFmt(MstItem.FItemConversion[0].ItemDiscount);

     { grid.Ints[colDisc1IsPrc, row]:= MstItem.FItemConversion[0].DiscTipe;
      if MstItem.FItemConversion[0].DiscTipe = 1 then
          grid.Cells[colDisc1,   row]:= FloatToStrFmt(
         (MstItem.FItemConversion[0].ItemDiscount * 100) / MstItem.FItemConversion[0].PurchasePrice)+'%'
      else grid.Cells[colDisc1, row]:= FloatToStrFmt(MstItem.FItemConversion[0].ItemDiscount);

      if (MstItem.FItemConversion[0].ItemTax <> 0) then begin
         grid.Ints[colTaxed, row]:= 1;
         grid.Ints[colMasterAdaTax, row]:= 1;
      end
      else begin }

//      end;

   // end;  //end else
    grid.Row:= row;
    grid.Col:= colQty;
    qty:= FloatToStrFmt(grid.Floats[colQty, row]);
    gridCellValidate(grid, colQty, row, qty, valid);
    Calculate;
  end
  else begin
    //Inform('Item tidak ditemukan.');
    grid.Col:= colBarcode;
    grid.Row:= row;
  end;
end;

procedure TfrmTrsSales.getVendor(ACode: string; AID: integer);
var Data: TMstRelation;
begin
  Data:= TMstRelation.Create();
  Data.Reset;
  Data.RelationCode:= ACode;
  Data.RelationId := AID;

  if Data.SelectInDB then begin
    txtSpec.Tag := Data.RelationId;
    txtSpec.Text:= Data.RelationName +' ('+Data.RelationCode+')';
    SavePostState(True);
  end
  else begin
    Inform('Pelanggan tidak ditemukan.');
    txtSpec.Clear;
    txtSpec.SetFocus;
  end;
  Data.Free;
end;

procedure TfrmTrsSales.InitForm;
begin
  InitGrid;
  lblTransaksi.Caption:= '[Nomor Transaksi]';
  lblTransaksi.Tag:= 0;
  txtNotes.Tag:= 0;
  txtSpec.Tag:= 0;
  txtOrder.Tag:= 0;
  txtNotes.Clear;
  txtSpec.Clear;
  txtOrder.Clear;
  txtSubtotal.Clear;
  txtDisc1.Clear;
  txtTax.Clear;
  txtTax.Clear;
  txtTotal.Clear;
  txtTunai.Clear;
  chkPpn.Checked := False;
  SetDisableEnable;
  dtpTransaction.Date:= ServerNow;
end;

procedure TfrmTrsSales.InitGrid;
begin
  ResetGrid(grid, 2, 13, 1,1,-1);
  grid.Font.Size := 12;

  grid.AutoSizeColumns(true, 5);
  grid.AutoSizeRows(true, 3);
  grid.ColWidths[colItemId]:= 0;
  grid.ColWidths[colModID]:= 0;

  grid.ColWidths[colNo]:= 18;
  grid.ColWidths[colBarcode]:= 90;
  grid.ColWidths[colQty     ]:= 60;
  grid.ColWidths[colUnit    ]:= 75;
  grid.ColWidths[colHrgDisplay   ]:= 75;
  grid.ColWidths[colTotal   ]:= 90;

  grid.ColWidths[colProfit   ]:= 0;
  //if (GlobalSystemUser.AccessLevel < LEVEL_DEVELOPER) then
  grid.ColWidths[colHBeli   ]:= 75;
  grid.ColWidths[colStok   ]:= 0;
  grid.RowHeights[1]:= grid.DefaultRowHeight;
end;

function TfrmTrsSales.isSaved: boolean;
var i: integer;  DiscDetail:Double;
begin
  Trx.Clear;

  Trx.SalesMst.SalesId   := lblTransaksi.Tag;
  Trx.SalesMst.TransDate := dtpTransaction.Date;
  Trx.SalesMst.TransType := TransType; //SALES_TYPE_POS;
  Trx.SalesMst.Subtotal  := StrFmtToFloatDef(txtSubtotal.Text,0);
    Trx.SalesMst.Dp   :=0;

  Trx.SalesMst.DiscValMst:= StrFmtToFloatDef(txtDisc1.Text,0);
  Trx.SalesMst.Tax       := 0;
  Trx.SalesMst.Total     := StrFmtToFloatDef(txtTotal.Text,0, True);
  Trx.SalesMst.RealAmount:= Trx.SalesMst.Total+Trx.SalesMst.Dp;
  Trx.SalesMst.PasienID := txtSpec.Tag;
  Trx.SalesMst.CaraBayar:= 0;//tunai 1:NonTunai  JENIS_BAYAR;
//  Trx.SalesMst.CardID:= CARD_ID;
//  Trx.SalesMst.Bank:= BANK_NAME;
  Trx.SalesMst.GudangID:= GlobalSystemConfig.localSetting.LocalGudang;


 //-1000 900
  //RealAmount: jumlah pendapatan
//  if (Trx.SalesMst.Total >= NILAI_UANG) then
  //    Trx.SalesMst.RealAmount:= NILAI_UANG
  //else
  Trx.SalesMst.RealAmount:= Trx.SalesMst.Total;

  //untuk kasus retur
 {if (Trx.SalesMst.Total < 0) then begin
    if (Trx.SalesMst.Total + NILAI_UANG) > 0 then
       NILAI_UANG:= Trx.SalesMst.Total
    else NILAI_UANG:= 0;
  end;}

  Trx.SalesMst.CashierId := GlobalSystemConfig.localSetting.Machine;//lblCasierUser.Tag;
  Trx.SalesMst.Cash      := Trx.SalesMst.Total;//NILAI_UANG;
  Trx.SalesMst.UserId    := GlobalSystemUser.UserId;
  Trx.SalesMst.Points    := 0;
  Trx.SalesMst.profit    := grid.ColumnSum(colProfit, 1, grid.RowCount-1);


  DiscDetail:= 0;
  for i:= 1 to grid.RowCount - 1 do
    if not IsClear(grid, colItemId, i) then begin
      Trx.SalesDetail_Arr.Add(0, //nebeng id racikan

      lblTransaksi.Tag,
      grid.Ints[colItemId,i],
      0,
      grid.Floats[colQty,i],
      grid.Floats[colHrgDisplay,i],0,0,
      grid.Floats[colTotal,i], // - grid.Floats[colEmbalase,i],
      1,
      grid.Floats[colHBeli, i],
      grid.Floats[colProfit, i],0, 0,0,0,0,
      grid.Floats[colHBeli,i],0,0,0);
      DiscDetail:= DiscDetail + 0 +0;
//      ((grid.Floats[colDisc, i] /100) * (grid.Floats[colQty,i]*grid.Floats[colHarga,i]));
    end;


  Trx.SalesMst.DiscDetail:= DiscDetail;

  if (lblTransaksi.Tag = 0) then
    Result:= Trx.InsertCashOnDB(0)
  else
     Result := Trx.UpdateCashOnDB;
 // else Result:= false;
 //
  lblTransaksi.Caption:= Trx.SalesMst.TransNum;
  lblTransaksi.Tag := Trx.SalesMst.SalesId;

  if Result then LoadData(Trx.SalesMst.SalesID);
  tbtSave.Enabled:= not Result;
  tbtPost.Enabled:= Result;


    if GlobalSystemConfig.localSetting.PrintStruk = 0 then Exit;
    try
    //kicking cash drawer...
 //     SendEscapeCode(GlobalSystemConfig.localSetting.DrawerCode);

   //priting cash drawer...
//      Self.Print;
   //  if Confirmed('Cetak Struk?')then
     //     Self.Print;
//       Self.printOrder(Sales.SalesMst.SalesId);
    except raise;
      Inform('Printer tidak terpasang.');
    end;


end;

function TfrmTrsSales.isValid: boolean;
var i: integer; valid: boolean;
begin
  Result:= False; valid:= False;
  for i:= 1 to grid.RowCount-1 do begin
    valid:= not IsClear(grid, colItemId, i);
    if valid then Break;
  end;

     CekInput(Result, valid , 'Tidak ada item untuk disimpan.', grid)
end;

procedure TfrmTrsSales.RemoveRow;
begin
  case lblTransaksi.Tag of
    0:begin
        grid.ClearRows(grid.Row, 1);
        if grid.RowCount > 2 then grid.RemoveRows(grid.Row, 1);
        Calculate;
      end
    else
      case status_delete of
        1: if Confirmed('Hapus penerimaan barang?') then
             if TTrsSales.DeleteTrans(lblTransaksi.Tag) then
                InitForm;
        2: if Confirmed('Hapus baris?') then
             if TTrsSales.DeleteDetail(grid.Ints[colItemId, grid.Row]) then begin
                grid.ClearRows(grid.Row, 1);
                if grid.RowCount > 2 then grid.RemoveRows(grid.Row, 1);
                Calculate;
             end;
      end;
   end;
end;

procedure TfrmTrsSales.SeekItem(ASearch: string);
var id: integer; code: string;
begin
  if txtNotes.Tag <> 0 then exit;
  code:= '';
  id:= frmLookup.ExecuteItem(0, txtSpec.Tag, 0);
  if Id > 0 then getItem(code, id, 1)
end;

procedure TfrmTrsSales.SeekVendor;
var id: integer;
begin
  if not btnSpec.Enabled then Exit;
  id:= frmLookup.Execute('CUST');
  if Id > 0 then getVendor('', id)
end;

procedure TfrmTrsSales.SetDisableEnable;
begin
  tbtSave.Enabled:= (txtNotes.Tag=0) and (lblTransaksi.Tag=0);
  dtpTransaction.Enabled:= (txtNotes.Tag=0);
  TransType := SALES_TYPE_POS;
  txtNotes.Enabled:= (txtNotes.Tag = 0);
  tbtDelete.Enabled:= (txtNotes.Tag = 0);
  tbtPost.Enabled:= (txtNotes.Tag = 0) and (lblTransaksi.Tag<>0);
  tbtDelete.Enabled:= (txtNotes.Tag = 0);
  btnSpec.Enabled:= (txtNotes.Tag = 0);
  btnOrder.Enabled:= (txtNotes.Tag = 0);
  txtSpec.Enabled:= (lblTransaksi.Tag = 0);
  txtOrder.Enabled:= (txtNotes.Tag = 0);
  tbtPrintUlang.Enabled := (lblTransaksi.Tag<>0);
end;

procedure TfrmTrsSales.gridCanEditCell(Sender: TObject;
  ARow, ACol: Integer; var CanEdit: Boolean);
begin
  CanEdit:=                     //colBonus,, colDisc1        colDisc2, colDisc3
  (ACol in [colBarcode, colQty,  colHrgDisplay,colTotal]) and
  (txtNotes.Tag = 0);
end;

procedure TfrmTrsSales.gridCellValidate(Sender: TObject;
  Col, Row: Integer; var Value: String; var Valid: Boolean);
var tmp: string; tmp_nilai,oldValue,oldHarga: double;
begin
  case Col of
    colBarcode:
    begin
      grid.Ints[colModID, Row]:= 1;
      SavePostState(True);
    end;
    colTotal : begin
        Valid:= True;//Value <> '';
        if not Valid then begin
          Inform('Inputan belum diisi.');
          grid.Col:= Col;
          grid.Row:= Row;
          exit;
        end else
        begin
            oldHarga:= StrFmtToFloatDef(grid.Cells[colHrgDisplay, Row], 0);
            oldValue:= StrFmtToFloatDef(grid.Cells[colTotal, Row], 0);
            grid.Cells[colHrgDisplay, Row]:=
            FloatToStrFmt(
              StrFmtToFloatDef(grid.Cells[colTotal, Row], 0) /
              StrFmtToFloatDef(grid.Cells[colQty,Row], 0));
              if  StrFmtToFloatDef(grid.Cells[colHrgDisplay,Row], 0) < StrFmtToFloatDef(grid.Cells[colHBeli,Row], 0) then begin
                Valid := False;
                Alert('Nilai harga jual tidak boleh lebih kecil dari harga beli!');
                Value := FloatToStrFmt(oldHarga * StrFmtToFloatDef(grid.Cells[colQty,Row], 0) );
                grid.Cells[colHrgDisplay, Row]:= FloatToStrFmt(oldHarga);
                 grid.Col:= Col;
                grid.Row:= Row;
                exit;
              end;
              grid.Cells[colProfit, Row]:=
            FloatToStrFmt(
              (StrFmtToFloatDef(grid.Cells[colQty, Row], 0) *
              StrFmtToFloatDef(grid.Cells[colHrgDisplay,Row], 0)) -
               (StrFmtToFloatDef(grid.Cells[colQty, Row], 0) *
              StrFmtToFloatDef(grid.Cells[colHBeli,Row], 0))

              );
          tmp_nilai:= StrFmtToFloatDef(Value,0);
          tmp:= FloatToStrFmt(tmp_nilai);
          Value:= tmp;


          Calculate;
          grid.Ints[colModID, Row]:= 1;
          SavePostState(True);
        end;
    end;
    colQty, colHrgDisplay:
    begin
      Valid:= True;//Value <> '';
      if not Valid then begin
        Inform('Inputan belum diisi.');
        grid.Col:= Col;
        grid.Row:= Row;
        exit;
      end else
      begin
        if (Col = colHrgDisplay) then begin

          if  StrFmtToFloatDef(grid.Cells[colHrgDisplay,Row], 0) < StrFmtToFloatDef(grid.Cells[colHBeli,Row], 0) then begin
            Valid := False;
            Alert('Nilai harga jual tidak boleh lebih kecil dari harga beli!');
            Value := '';
             grid.Col:= Col;
            grid.Row:= Row;
            exit;
          end;
        end;
        grid.Cells[colTotal, Row]:=
            FloatToStrFmt(
              StrFmtToFloatDef(grid.Cells[colQty, Row], 0) *
              StrFmtToFloatDef(grid.Cells[colHrgDisplay,Row], 0));
         grid.Cells[colProfit, Row]:=
            FloatToStrFmt(
              (StrFmtToFloatDef(grid.Cells[colQty, Row], 0) *
              StrFmtToFloatDef(grid.Cells[colHrgDisplay,Row], 0)) -
               (StrFmtToFloatDef(grid.Cells[colQty, Row], 0) *
              StrFmtToFloatDef(grid.Cells[colHBeli,Row], 0))

              );
        tmp_nilai:= StrFmtToFloatDef(Value,0);
        tmp:= FloatToStrFmt(tmp_nilai);
        Value:= tmp;


        Calculate;
        grid.Ints[colModID, Row]:= 1;
        SavePostState(True);
      end;
    end;
  end;
end;

procedure TfrmTrsSales.Print;
var i, x, jmlPoint: integer; 
begin

  if GlobalSystemConfig.localSetting.PrintStruk = 0 then Exit;
  GlobalStringList.Clear;
  RAWPrinter1.PrinterName:= GlobalSystemConfig.localSetting.PrinterStruk;

//open drawer first
  //if (GlobalSystemConfig.localSetting.DrawerCode <> '') then
   // GlobalStringList.Append(GlobalSystemConfig.localSetting.DrawerCode);


  GlobalStringList.Append(FixWidth(CompanyProfile.FCompanyName, 40, taCenter));
  if (CompanyProfile.FAddress<>'') then
    GlobalStringList.Append(FixWidth(CompanyProfile.FAddress, 40, taCenter));
  if (CompanyProfile.FTelp1 <> '') then
    GlobalStringList.Append(FixWidth(CompanyProfile.FTelp1, 40, taCenter));
  if (CompanyProfile.FCity <> '') then
    GlobalStringList.Append(FixWidth(CompanyProfile.FCity, 40, taCenter));
 // GlobalStringList.Append(FixWidth(' ', 40, taCenter));
  GlobalStringList.Append(FixWidth('-----------------------------------------',40, taLeftJustify));


  GlobalStringList.Append(
    FixWidth(lblTransaksi.Caption, 20, taLeftJustify) +
    FixWidth(FormatDateTime('dd/MM/yyyy HH:nn', ServerCurrDateTime), 20, taRightJustify));

 // GlobalStringList.Append(
   // FixWidth('Kasir : '+GlobalSystemUser.UserId, 30, taLeftJustify));

  GlobalStringList.Append(FixWidth('-----------------------------------------',40, taLeftJustify));

  for i := 1 to grid.RowCount-1 do
  if not IsClear(grid, colItemId, i) then
    with GlobalStringList do begin
    //  Append(FixWidth(grid.Cells[colDesc, i],40, taLeftJustify));

    //kasus normal
    //  if (grid.Cells[colDisc, i] = '0') and (grid.Cells[colDiscRp, i] = '0') then
        Append(
          FixWidth(grid.Cells[colDesc, i],13, taLeftJustify)+
          FixWidth(grid.Cells[colQty, i]+' '+grid.Cells[colUnit, i], 7, taRightJustify) +
          FixWidth(' X ', 3, taLeftJustify) +
          FixWidth(grid.Cells[colHrgDisplay, i], 7, taRightJustify)+
          FixWidth(grid.Cells[colTotal, i], 10, taRightJustify))

    //kasus ada 1 discont
    {  else if (grid.Cells[colDisc, i] <> '0') or (grid.Cells[colDiscRp, i] <> '0') then
        Append(
          FixWidth(grid.Cells[colQty, i]+' '+grid.Cells[colUnit, i], 9, taRightJustify) +
          FixWidth(' X', 2, taLeftJustify) +
          FixWidth(grid.Cells[colHarga, i], 9, taRightJustify)+
          IfThen(asgSales.Cells[colDisc, i]<> '0',
          FixWidth(' -'+grid.Cells[colDisc, i]+'%', 9, taRightJustify))+
          IfThen(grid.Cells[colDiscRp, i]<> '0',
          FixWidth(' -'+grid.Cells[colDiscRp, i], 9, taRightJustify))+
          FixWidth(grid.Cells[colTotal, i], 11, taRightJustify))

    //kasus ada 2 discont
      else if (grid.Cells[colDisc, i] <> '0') and (grid.Cells[colDiscRp, i] <> '0') then begin
        Append(
          FixWidth(grid.Cells[colQty, i]+' '+grid.Cells[colUnit, i], 10, taRightJustify) +
          FixWidth(' X ', 3, taLeftJustify) +
          FixWidth(grid.Cells[colHarga, i], 9, taRightJustify)+
          IfThen(grid.Cells[colDisc, i]<> '0',
          FixWidth(' -'+grid.Cells[colDisc, i]+'%', 8, taRightJustify))+
          IfThen(grid.Cells[colDiscRp, i]<> '0',
          FixWidth(' -'+grid.Cells[colDiscRp, i], 10, taRightJustify)));
        Append(FixWidth(grid.Cells[colTotal, i], 40, taRightJustify));
      end;   }
    end;

  GlobalStringList.Append(FixWidth('-----------------------------------------',40, taLeftJustify));
  GlobalStringList.Append(
    FixWidth('Subtotal', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(txtSubtotal.Text ,24, taRightJustify));

  if (StrFmtToFloatDef(txtDisc1.Text,0) > 0) then
  GlobalStringList.Append(
    FixWidth('Discount %', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(txtDisc1.Text ,24, taRightJustify));

 { if (StrFmtToFloatDef(lblDiscRp.Caption,0) > 0) then
  GlobalStringList.Append(
    FixWidth('Discount Rp', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(lblDiscRp.Caption ,24, taRightJustify));
  }
  if (StrFmtToFloatDef(txtTax.Text,0) > 0) then
  GlobalStringList.Append(
    FixWidth('PPN %', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(txtTax.Text ,24, taRightJustify));

  if (StrFmtToFloatDef(txtTax.Text,0) > 0) or
     (StrFmtToFloatDef(txtDisc1.Text,0) > 0) {or 
     (StrFmtToFloatDef(lblDisc.Caption,0) > 0) } then
  GlobalStringList.Append(
    FixWidth('Grand Total', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(txtTotal.Text ,24, taRightJustify));

  GlobalStringList.Append(
    FixWidth('Tunai', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(FloatToStrFmt(StrFmtToFloatDef(txtTunai.Text,0)) ,24, taRightJustify));

  GlobalStringList.Append(
    FixWidth('Kembali', 14, taLeftJustify) +
    FixWidth(':', 2, taLeftJustify) +
    FixWidth(FloatToStrFmt(StrFmtToFloatDef(txtTunai.Text,0) - StrFmtToFloatDef(txtTotal.Text,0)),24, taRightJustify));

 // GlobalStringList.Append('');

  //if jmlPoint <> 0 then begin
//  GlobalStringList.Append(escCRLF);

 { if RELASI_ID <> 0 then begin
     GlobalStringList.Append('');
     case JENIS_CUSTOMER of
       PROD_CUST_CUSTOMER:
          GlobalStringList.Append(
            FixWidth('CUSTOMER', 10, taLeftJustify) +
            FixWidth(':', 2, taLeftJustify) +
            FixWidth(TMstRelation.GetName(RELASI_ID),28, taLeftJustify));

       PROD_CUST_MEMBER:
           GlobalStringList.Append(
            FixWidth('MEMBER', 10, taLeftJustify) +
            FixWidth(':', 2, taLeftJustify) +
            FixWidth(TMstRelation.GetName(RELASI_ID),28, taLeftJustify));
      end;
  end;

  jmlPoint:= jumlahkanPoint;
  if (jmlPoint <> 0) and (RELASI_ID <> 0) then begin

    GlobalStringList.Append(
      FixWidth('Jml Point', 10, taLeftJustify) +
      FixWidth(':', 2, taLeftJustify) +
      FixWidth(FloatToStrFmt(jmlPoint),28, taLeftJustify));
    GlobalStringList.Append(FixWidth('**catatan**',40, taCenter));
  end;
    }
  if GlobalSystemConfig[CONF_FOOTER1-1].ConfValue <> '' then
    GlobalStringList.Append(FixWidth(GlobalSystemConfig[CONF_FOOTER1-1].ConfValue, 40, taCenter));

  if GlobalSystemConfig[CONF_FOOTER2-1].ConfValue <> '' then
    GlobalStringList.Append(FixWidth(GlobalSystemConfig[CONF_FOOTER2-1].ConfValue, 40, taCenter));

  x:= GlobalSystemConfig.localSetting.MarginBottom;
  for i:= 1 to x do
    GlobalStringList.Append(' ');

  try
  //printing struk...

    //cutting paper...
    if (GlobalSystemConfig.localSetting.CutterCode <> '') and (GlobalSystemConfig.localSetting.AutoCutter = 1) then
      GlobalStringList.Append(GlobalSystemConfig.localSetting.CutterCode);

    RAWPrinter1.DocumentTitle:= 'Struk';
    RAWPrinter1.BeginDoc;
 //   RAWPrinter1.WriteStr(GlobalStringList.Text);
    RAWPrinter1.WriteLn(GlobalStringList.Text);
//
  GlobalStringList.Append(FixWidth(CompanyProfile.FCompanyName, 40, taCenter));
  GlobalStringList.Append(FixWidth(CompanyProfile.FAddress, 40, taCenter));
  GlobalStringList.Append(FixWidth(CompanyProfile.FTelp1, 40, taCenter));
  GlobalStringList.Append(FixWidth(CompanyProfile.FCity, 40, taCenter));
  GlobalStringList.Append(FixWidth(' ', 40, taCenter));
//
    RAWPrinter1.EndDoc;
  
    except raise;
      Inform('Printer tidak terpasang.');
  end;

end;



function TfrmTrsSales.LoadHolded(id: integer): boolean;
var i: integer;  x, x2: double;
begin
  if ID = 0 then exit;
  Trx.Clear;
  Trx.SalesMst.SalesID:= ID;
  Trx.SelectHolded;
  lblTransaksi.Caption:= Trx.SalesMst.TransNum;
  lblTransaksi.Tag:= Trx.SalesMst.SalesID;
  txtSpec.Tag:= Trx.SalesMst.PasienID;
  txtSpec.Text:= TMstRelation.GetName(Trx.SalesMst.PasienID);
//  txtOrder.Tag:= Trx.OrderId;
//  txtOrder.Text:= TTrsOrder.GetID(Trx.OrderId);
  dtpTransaction.Date:= Trx.SalesMst.TransDate;


//  txtNotes.Text:= Trx.SalesMst.Notes;
//  txtNotes.Tag:= Trx.SalesMst.StatusId;

  txtSubtotal.Text:= FloatToStrFmt(Trx.SalesMst.Subtotal);
  txtDisc1.Text := FloatToStrFmt(Trx.SalesMst.DiscDetail);
  txtTotal.Text := FloatToStrFmt(Trx.SalesMst.Total);



  InitGrid;
  //0receipt_detail_id, 1item_id, 2conv_id, 3conv_bonus_id, 4quantity, 5qty_bonus,
  //6price, 7amount, 8disc1, 9disc2, 10disc3, 11conversion, 12conv_bonus
  //13item_name, 14barcode, 15satuan, 16sat_bonus
  //17d.tax, 18disc1_is_prc, 19disc2_is_prc, 20disc3_is_prc,21item_code

  //detail:= Trx. SelectDetail(ID);
 // detail.First;
  for i:= 0 to Trx.SalesDetail_Arr.Count-1 do begin
    grid.Ints[colModID,   i+1]:= 0;
    grid.Ints[colNo,i+1 ] := 1;
//    grid.Cells[colID,      i]:= detail.FieldValue(0);
    grid.Ints[colItemId,  i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemID;
//    grid.Cells[colConvId,  i]:= detail.FieldValue(2);
//    grid.Cells[colcode, i]:= detail.FieldValue(21);
    grid.Cells[colBarcode, i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemCode;
    grid.Cells[colDesc,    i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemName;
    grid.Cells[colUnit,    i+1]:= Trx.SalesDetail_Arr[i].MstItemConversion.MstMaster.MstCode;
    //grid.Cells[colSatBonus,i]:= detail.FieldValue(16);
    grid.Cells[colQty,     i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Quantity);
    grid.Cells[colHrgDisplay,   i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Price);
    grid.Cells[colTotal,   i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Amount);
//    grid.Cells[colConv,    i]:= FloatToStrFmt(BufferToFloat(detail.FieldValue(11)));
  //  grid.Cells[colConvBonus,i]:= FloatToStrFmt(BufferToFloat(detail.FieldValue(12)));
   // grid.Cells[colConvBonusId,i]:= detail.FieldValue(3);
    //grid.Cells[colTax,     i]:= FloatToStrFmt(BufferToFloat(detail.FieldValue(17)));


   
    grid.Ints[colModID,    i+1]:= 0;
    grid.AddRow;
  end;
//  Calculate;
  DeleteRowTerakhir(grid, 2, 1);
  SetDisableEnable;

end;



function TfrmTrsSales.SaveHolded: boolean;
var i: integer;  DiscDetail:Double;
begin
  Trx.Clear;

  Trx.SalesMst.SalesId   := lblTransaksi.Tag;
  Trx.SalesMst.TransDate := dtpTransaction.Date;
  Trx.SalesMst.TransType := TransType; //SALES_TYPE_POS;
  Trx.SalesMst.Subtotal  := StrFmtToFloatDef(txtSubtotal.Text,0);
    Trx.SalesMst.Dp   :=0;

  Trx.SalesMst.DiscValMst:= StrFmtToFloatDef(txtDisc1.Text,0);
  Trx.SalesMst.Tax       := 0;
  Trx.SalesMst.Total     := StrFmtToFloatDef(txtTotal.Text,0, True);
  Trx.SalesMst.RealAmount:= Trx.SalesMst.Total+Trx.SalesMst.Dp;
  Trx.SalesMst.PasienID := txtSpec.Tag;
  Trx.SalesMst.CaraBayar:= 0;//tunai 1:NonTunai  JENIS_BAYAR;
//  Trx.SalesMst.CardID:= CARD_ID;
//  Trx.SalesMst.Bank:= BANK_NAME;
  Trx.SalesMst.GudangID:= GlobalSystemConfig.localSetting.LocalGudang;


 //-1000 900
  //RealAmount: jumlah pendapatan
//  if (Trx.SalesMst.Total >= NILAI_UANG) then
  //    Trx.SalesMst.RealAmount:= NILAI_UANG
  //else
  Trx.SalesMst.RealAmount:= Trx.SalesMst.Total;

  //untuk kasus retur
 {if (Trx.SalesMst.Total < 0) then begin
    if (Trx.SalesMst.Total + NILAI_UANG) > 0 then
       NILAI_UANG:= Trx.SalesMst.Total
    else NILAI_UANG:= 0;
  end;}

  Trx.SalesMst.CashierId := GlobalSystemConfig.localSetting.Machine;//lblCasierUser.Tag;
  Trx.SalesMst.Cash      := Trx.SalesMst.Total;//NILAI_UANG;
  Trx.SalesMst.UserId    := GlobalSystemUser.UserId;
  Trx.SalesMst.Points    := 0;
  Trx.SalesMst.profit    := grid.ColumnSum(colProfit, 1, grid.RowCount-1);
 

  DiscDetail:= 0;
  for i:= 1 to grid.RowCount - 1 do
    if not IsClear(grid, colItemId, i) then begin
      Trx.SalesDetail_Arr.Add(0, //nebeng id racikan

      lblTransaksi.Tag,
      grid.Ints[colItemId,i],
      0,
      grid.Floats[colQty,i],
      grid.Floats[colHrgDisplay,i],0,0,
      grid.Floats[colTotal,i], // - grid.Floats[colEmbalase,i],
      1,
      grid.Floats[colHBeli, i],
      grid.Floats[colProfit, i],0, 0,0,0,0,
      grid.Floats[colHBeli,i],0,0,0);
      DiscDetail:= DiscDetail + 0 +0;
//      ((grid.Floats[colDisc, i] /100) * (grid.Floats[colQty,i]*grid.Floats[colHarga,i]));
    end;

   
  Trx.SalesMst.DiscDetail:= DiscDetail;

 // if (lblTransaksi.Tag = 0) then
    Result:= Trx.InsertHolded();//
 // else Result:= false;
 //
  lblTransaksi.Caption:= Trx.SalesMst.TransNum;
  lblTransaksi.Tag := Trx.SalesMst.SalesId;
  
  if Result then InitForm;//LoadData(Trx.SalesMst.SalesID);
  tbtSave.Enabled:= not Result;
  tbtPost.Enabled:= Result;


    if GlobalSystemConfig.localSetting.PrintStruk = 0 then Exit;
    try
    //kicking cash drawer...
 //     SendEscapeCode(GlobalSystemConfig.localSetting.DrawerCode);

   //priting cash drawer...
     // Self.Print;
     if Confirmed('Cetak Struk?')then
       Self.Print;
//       Self.printOrder(Sales.SalesMst.SalesId);
    except raise;
      Inform('Printer tidak terpasang.');
    end;

end;




procedure TfrmTrsSales.HoldedTrx;
var id: integer;
begin
  id:= frmTrsSalesHoldedList.Execute;
  if id <> 0 then LoadHolded(id)
  
end;



procedure TfrmTrsSales.gridGetAlignment(Sender: TObject;
  ARow, ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  if (ACol in[colNo, colQty, colHrgDisplay,colTotal, colHBeli]) then
    HAlign:= taRightJustify
end;

procedure TfrmTrsSales.gridGetEditorType(Sender: TObject;
  ACol, ARow: Integer; var AEditor: TEditorType);
begin
  case ACol of
    colQty, colHrgDisplay,colTotal: AEditor:= edFloat;
  end;
end;

procedure TfrmTrsSales.gridKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var value: string; jumlah: double; valid: boolean;
begin
  case key of
    VK_ADD   : getUnitList;
    VK_F2    : SeekItem(grid.Cells[colBarcode, grid.Row]);

    VK_RETURN:
    begin
      if (grid.Col in [colBarcode]) and (grid.Ints[colModID, grid.Row] = 1) then begin
         value:= grid.Cells[grid.col, grid.Row];
         if oldValue <> value then
           getItem(value, 0, 1);
      end;
      //GoNextColumn(Sender);
    end;

    VK_MULTIPLY:
    begin
       case grid.Col of

         colHrgDisplay:
         begin
             jumlah:= grid.Floats[colHrgDisplay, grid.Row] * 1.1;
             value := FloatToStrFmt(jumlah);
             grid.Cells[grid.Col, grid.Row]:= value;
          
           gridCellValidate(Sender, grid.Col, grid.Row, value, valid);
         end;

        
       end;
    end;

  

    VK_F3: txtSpec.SetFocus;
    VK_F4:
    begin
      grid.SetFocus;
      grid.Row:= 1;
      grid.Col:= colBarcode;
    end;

    VK_F9: editItem;


  end;
end;

procedure TfrmTrsSales.gridKeyPress(Sender: TObject;
  var Key: Char);
begin
  case grid.Col of
    colQty: if key = #46 then key := #44;
  end;
end;

procedure TfrmTrsSales.getUnitList;
var
  i: integer;
  rect: TRect; points: TPoint;
  MenuUnit: TMenuItem; PopUnit: TPopupMenu;
begin
  if grid.Ints[colItemId, grid.Row] <= 0 then exit;
  grid.Col:= colQty;

  PopUnit:= TPopupMenu.Create(grid);
  PopUnit.Items.Clear;
  TMstItemConversionArr.getList(ListUnit, grid.Ints[colItemId, grid.Row], nil);
  for i:= 0 to ListUnit.Count-1 do begin
    MenuUnit:= TMenuItem.Create(PopUnit.Items);
    MenuUnit.Caption:= ListUnit.Values[ListUnit.Names[i]];
    MenuUnit.Tag    := StrToInt(ListUnit.Names[i]);
    MenuUnit.OnClick:= getUnit;
    PopUnit.Items.Add(MenuUnit);
  end;

  rect   := grid.CellRect(grid.Col, grid.Row);
  points := grid.ClientToScreen(Point(grid.Left, grid.Top));
  SetCursorPos((points.X + rect.Left), (points.Y + (rect.Top - 10)));
  PopUnit.Popup(Mouse.CursorPos.X, Mouse.CursorPos.Y);
  PopUnit.FreeOnRelease;
end;

procedure TfrmTrsSales.getUnit(Sender: TObject);
var ARow: Integer; MstUnit: TMstItemConversion;
begin
  case grid.Col of
    colQty:
    begin
      ARow:= grid.Row;
      MstUnit:=TMstItemConversion.Create;
      MstUnit.Reset;
      MstUnit.ConvId:= (Sender as TMenuItem).Tag;
      if MstUnit.SelectInDB then begin
//        grid.Ints[colConvId, ARow]:= MstUnit.ConvId;
        grid.Cells[colUnit,  ARow]:= MstUnit.MstMaster.MstCode;
        grid.Cells[colHrgDisplay, ARow]:= FloatToStrFmt(MstUnit.PurchasePrice);
//        grid.Cells[colConv,  ARow]:= FloatToStrFmt(MstUnit.Conversion);
        grid.Ints[colModID, ARow]:= 1;

        grid.Cells[colTotal, ARow]:=
          FloatToStrFmt(
          StrFmtToFloatDef(grid.Cells[colHrgDisplay, ARow],0) *
          StrFmtToFloatDef(grid.Cells[colQty, ARow],0));
        Calculate;
      end;
      MstUnit.Free;
    end;

  end;
end;

procedure TfrmTrsSales.txtSpecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case key of
    VK_F2 : SeekVendor;
    VK_TAB:
      if txtSpec.Modified then
        getVendor(txtSpec.Text,0);
  end;
end;

procedure TfrmTrsSales.txtSpecKeyPress(Sender: TObject;
  var Key: Char);
begin
//  if key <> #13 then txtSpec.Tag:= 0;
end;

procedure TfrmTrsSales.btnSpecClick(Sender: TObject);
begin
  SeekVendor
end;

procedure TfrmTrsSales.dtpExprKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //if (key = vk_return) and (dtpDely.Enabled) then
   // dtpDely.SetFocus;
end;

procedure TfrmTrsSales.dtpDelyKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_return) and (txtNotes.Enabled) then
    txtNotes.SetFocus;
end;

procedure TfrmTrsSales.dtpTransactionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = vk_return) and (txtSpec.Enabled) then
    txtSpec.SetFocus;
end;

procedure TfrmTrsSales.rdbTaxClick(Sender: TObject);
begin
//  Calculate;
  SavePostState(True);
end;

procedure TfrmTrsSales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if MstItem <> nil then MstItem.Free; MstItem:= nil;
  if Trx <> nil then Trx.Free; Trx:= nil;
  if ListUnit <> nil then ListUnit.Free; listUnit:= nil;
  if lsGudang <> nil then lsGudang.Free; lsGudang:= nil;
end;

procedure TfrmTrsSales.LoadData(ID: integer);
var i: integer;  x, x2: double;
begin
  if ID = 0 then exit;
  Trx.Clear;
  Trx.SalesMst.SalesID:= ID;
  Trx.SelectInDB;
  lblTransaksi.Caption:= Trx.SalesMst.TransNum;
  lblTransaksi.Tag:= Trx.SalesMst.SalesID;
  txtSpec.Tag:= Trx.SalesMst.PasienID;
  txtSpec.Text:= TMstRelation.GetName(Trx.SalesMst.PasienID);
//  txtOrder.Tag:= Trx.OrderId;
//  txtOrder.Text:= TTrsOrder.GetID(Trx.OrderId);
  dtpTransaction.Date:= Trx.SalesMst.TransDate;


//  txtNotes.Text:= Trx.SalesMst.Notes;
  txtNotes.Tag:= Trx.SalesMst.StatusId;

  txtSubtotal.Text:= FloatToStrFmt(Trx.SalesMst.Subtotal);
  txtDisc1.Text := FloatToStrFmt(Trx.SalesMst.DiscDetail);
  txtTotal.Text := FloatToStrFmt(Trx.SalesMst.Total);



  InitGrid;
  //0receipt_detail_id, 1item_id, 2conv_id, 3conv_bonus_id, 4quantity, 5qty_bonus,
  //6price, 7amount, 8disc1, 9disc2, 10disc3, 11conversion, 12conv_bonus
  //13item_name, 14barcode, 15satuan, 16sat_bonus
  //17d.tax, 18disc1_is_prc, 19disc2_is_prc, 20disc3_is_prc,21item_code

  //detail:= Trx. SelectDetail(ID);
 // detail.First;
  for i:= 0 to Trx.SalesDetail_Arr.Count-1 do begin
    grid.Ints[colModID,   i+1]:= 0;
    grid.Ints[colNo,i+1 ] := (i+1);
//    grid.Cells[colID,      i]:= detail.FieldValue(0);
    grid.Ints[colItemId,  i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemID;
//    grid.Cells[colConvId,  i]:= detail.FieldValue(2);
//    grid.Cells[colcode, i]:= detail.FieldValue(21);
    grid.Cells[colBarcode, i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemCode;
    grid.Cells[colDesc,    i+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemName;
    grid.Cells[colUnit,    i+1]:= Trx.SalesDetail_Arr[i].MstItemConversion.MstMaster.MstCode;
    //grid.Cells[colSatBonus,i]:= detail.FieldValue(16);
    grid.Cells[colQty,     i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Quantity);
    grid.Cells[colHrgDisplay,   i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Price);
    grid.Cells[colTotal,   i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Amount);

    grid.Cells[colHBeli,    i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].PricePurchase);
    grid.Cells[colProfit,i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].AmountProfit);
   // grid.Cells[colConvBonusId,i]:= detail.FieldValue(3);
    //grid.Cells[colTax,     i]:= FloatToStrFmt(BufferToFloat(detail.FieldValue(17)));



    grid.Ints[colModID,    i+1]:= 0;
    grid.AddRow;
  end;
//  Calculate;
  DeleteRowTerakhir(grid, 2, 1);
  SetDisableEnable;
end;

procedure TfrmTrsSales.txtSubtotalValueValidate(Sender: TObject;
  value: String; var IsValid: Boolean);
begin
  AdvEdtFloatFmt(Sender, value);
end;

procedure TfrmTrsSales.tbtDeleteClick(Sender: TObject);
begin
  RemoveRow
end;

procedure TfrmTrsSales.tbtSaveClick(Sender: TObject);
begin
  if isValid then isSaved 
end;

procedure TfrmTrsSales.tbtNewClick(Sender: TObject);
var tag : integer;
begin
  tag := 301;
//  Alert(IntToStr(AktiveControl.Tag));
if not TSystemAccess.isCan(CAN_ADD,tag) then exit;
  InitForm;
  SetDisableEnable;
  txtSpec.SetFocus
end;

procedure TfrmTrsSales.txtDisc2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #46 then key := #44;
  IgnoreChar(Key);
end;

procedure TfrmTrsSales.txtDisc2Exit(Sender: TObject);
begin
  Calculate;
end;

procedure TfrmTrsSales.txtSpecEnter(Sender: TObject);
begin
  status_delete:= 1;
end;

procedure TfrmTrsSales.gridEnter(Sender: TObject);
begin
  status_delete:= 2;
end;

procedure TfrmTrsSales.tbtPostClick(Sender: TObject);
begin
  if TTrsSales.PostTrans(lblTransaksi.Tag,TRANS_TYPE_SALES) then  begin
    txtNotes.Tag:= 1;
    if (Confirmed('Cetak Struk ?')) then Self.Print;
  end;
  SetDisableEnable;
end;

procedure TfrmTrsSales.dtpTransactionChange(Sender: TObject);
begin
  SavePostState(True);
end;

procedure TfrmTrsSales.txtNotesChange(Sender: TObject);
var asalna_true: boolean;
begin
  asalna_true:= tbtSave.Enabled;
  if not asalna_true then
  SavePostState((Sender as TAdvEdit).Modified);
end;

procedure TfrmTrsSales.SavePostState(state: boolean);
begin
  tbtSave.Enabled:= state;
  if state then tbtPost.Enabled:= False; //ngahaja
end;

procedure TfrmTrsSales.gridRowChanging(Sender: TObject; OldRow,
  NewRow: Integer; var Allow: Boolean);
begin
  if OldRow <= grid.RowCount-1 then
  grid.RowHeights[OldRow]:= grid.DefaultRowHeight;
  grid.AutoSizeRow(NewRow);
  if grid.RowHeights[NewRow] < grid.DefaultRowHeight then
    grid.RowHeights[NewRow]:= grid.DefaultRowHeight;
end;

procedure TfrmTrsSales.CheckBox1Click(Sender: TObject);
begin
  Calculate;
end;

procedure TfrmTrsSales.txtDisc1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3: txtSpec.SetFocus;
    VK_F4:
    begin
      grid.SetFocus;
      grid.Row:= 1;
      grid.Col:= colBarcode;
    end;

  end;  
end;

procedure TfrmTrsSales.CalculateBuangPPN;
var addt, total, disc1,disc2: double;
begin
  total:= StrFmtToFloatDef(txtSubtotal.Text,0);
  disc1:= StrFmtToFloatDef(txtDisc1.Text,0);
  total:= total - disc1 - disc2;
  txtTax.Text:= FloatToStrFmt(0);
  txtTax.Tag := 0;
  txtTotal.Text:= FloatToStrFmt(total+addt);
end;

procedure TfrmTrsSales.CalculateManualPPN;
var addt, total, disc1,disc2: double;
begin
  total:= StrFmtToFloatDef(txtSubtotal.Text,0);
  disc1:= StrFmtToFloatDef(txtDisc1.Text,0);
  total:= total - disc1 - disc2;
  txtTax.Text:= FloatToStrFmt(total * 0.1);
  txtTax.Tag := 1;

  txtTotal.Text:= FloatToStrFmt((total * 0.1) + total+addt);
end;

procedure TfrmTrsSales.txtTaxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case Key of
    VK_F3: txtSpec.SetFocus;
    VK_F4:
    begin
      grid.SetFocus;
      grid.Row:= 1;
      grid.Col:= colBarcode;
    end;
    VK_MULTIPLY: CalculateManualPPN;
    VK_NUMPAD0: CalculateBuangPPN;
  end;
end;

procedure TfrmTrsSales.gridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  if (ACol = colBarcode) then OldValue:= grid.Cells[ACol, ARow];

end;

procedure TfrmTrsSales.editItem;
var itemID: integer; value: string; valid: boolean;
begin

  itemID:= grid.Ints[colItemID, grid.Row];

  if (itemID <> 0) and (txtNotes.Tag = 0) then begin
//    frmMstItem.Execute(purpose,itemID);

    MstItem.Reset;
    MstItem.ItemId:= itemID;

    if MstItem.SelectInDB4(1) then begin
      grid.Cells[colDesc,    grid.Row]:= MstItem.ItemName;
      grid.Cells[colBarcode, grid.Row]:= MstItem.ItemCode;
      grid.Ints[colItemId,   grid.Row]:= MstItem.ItemId;
      grid.Ints[colModId,    grid.Row]:= 1;

      grid.Cells[colHrgDisplay,   grid.Row]:= FloatToStrFmt(MstItem.SellingPrice);
//      grid.Cells[colConv,    grid.Row]:= FloatToStrFmt(MstItem.FItemConversion[0].Conversion);



    end;

    gridCellValidate(grid, colHrgDisplay, grid.Row, value, valid);
    gridCellValidate(grid, colQty, grid.Row, value, valid);
  end;

end;

procedure TfrmTrsSales.gridDblClickCell(Sender: TObject; ARow,
  ACol: Integer);
begin
//  editItem

end;

procedure TfrmTrsSales.chkPpnClick(Sender: TObject);
begin
  inherited;
  if chkPpn.Checked then CalculateManualPPN else CalculateBuangPPN;
end;

procedure TfrmTrsSales.returTrans(id:integer);
var cust:string;ret : TMysqlResult;
  rowSales,rowService,i:integer;

begin
  //Alert(MSG_UNDER_CONSTRUCTION); exit;
  ToolBar1.ParentColor:= false;
  ToolBar1.Color:= clWhite;

  ListUnit:= TStringList.Create;
  lsGudang:= TStringList.Create;

//  TMstMaster_Arr.GetList(lsGudang, MST_TYPE_GUDANG);
//  NameValueListToValueList(lsGudang, cmbGudang.Items);
 // cmbGudang.ItemIndex:= -1;
 // cmbGudangChange(nil);

  MstItem  := TMstItem.Create;
  status_delete:= 0;
  Trx := TTrsSales.Create;
  InitForm;
//  LoadData(ID);


//   num:= InputBox('Retur', 'NO Transaksi : ', '');
//  if num <> '' then begin

      InitForm;
      TransType :=  SALES_TYPE_RETUR;
   
      Trx.SalesMst.SalesID := id;
      Trx.SelectInDB;
      if (Trx.SalesMst.TransType = SALES_TYPE_RETUR) then begin
          Alert('Transaksi Retur Sales tidak bisa diretur lagi');
      end;
      dtpTransaction.Tag:= Trx.SalesMst.SalesId;
      txtSpec.Tag:= Trx.SalesMst.PasienID;
  txtSpec.Text:= TMstRelation.GetName(Trx.SalesMst.PasienID);
  txtSpec.Enabled :=  False;

  
      rowSales:= 0;rowService := 0;
      for i:= 0 to Trx.SalesDetail_Arr.Count-1 do begin
        if (Trx.SalesDetail_Arr[i].PaketID = 0) then begin
          grid.Ints[colNo, rowSales+1]:= rowSales+1;
          grid.Cells[colBarcode,  rowSales+1]:= Trx.SalesDetail_Arr[i].MstItem.Barcode;
          grid.Cells[colDesc,     rowSales+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemName;
          grid.Cells[colUnit,     rowSales+1]:= Trx.SalesDetail_Arr[i].MstItemConversion.MstMaster.MstCode;
          grid.Cells[colQty,      rowSales+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Quantity);
//          grid.Cells[colHarga,    rowSales+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Price);
          grid.Cells[colHrgDisplay,rowSales+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Price);// + Sales.SalesDetail_Arr[i].ConvBonus);
//          grid.Cells[colDisc,     i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Disc);
 //         grid.Cells[colDiscRp,   i+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].DiscVal);
          grid.Cells[colTotal,    rowSales+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Amount);
//          grid.Cells[colTotaldISPLAY,    rowSales+1]:= FloatToStrFmt(Trx.SalesDetail_Arr[i].Amount + Sales.SalesDetail_Arr[i].ConvBonus);
          grid.Floats[colProfit,  rowSales+1]:= Trx.SalesDetail_Arr[i].AmountProfit;
          grid.Ints[colItemID,    rowSales+1]:= Trx.SalesDetail_Arr[i].MstItem.ItemId;
          grid.Floats[colHBeli,   rowSales+1]:= Trx.SalesDetail_Arr[i].HrgBeli; //numpang is paket
          Calculate(rowSales+1);
          Inc(rowSales);
          grid.AddRow;
        end
        
      end;
      DeleteRowTerakhir(grid, 2, 1);

   
 // end;
    Run(Self);
end;

procedure TfrmTrsSales.Calculate(xrow: integer; isService: boolean);
var total, totalDisplay, disDetRp, disDetPrc, 
  disTotal, disTotalVal,dp: double;
begin
  total := 0;

  if isService then begin

  end
  else begin
    total := grid.Floats[colQty,  xRow] * grid.Floats[colHrgDisplay, xRow];
    disDetRp := 0;//grid.Floats[colDiscRp, xrow];
    disDetPrc:= 0;//grid.Floats[colDisc, xrow];
    disDetPrc:= total * (disDetPrc/100);

    total:= total - disDetRp - disDetPrc;
    grid.Cells[colTotal, xrow]:= FloatToStrFmt(total);

    if GlobalSystemConfig[CONF_HARGA-1].ConfValue = IntToStr(HARGA_RATA) then
//      grid.Floats[colProfit, xRow]:= total -
  //      (grid.Floats[colQty, xRow] * grid.Floats[colHRata, xRow])
    else
      grid.Floats[colProfit, xRow]:= total -
        (grid.Floats[colQty, xRow] * grid.Floats[colHBeli, xRow]);


  end;



  totalDisplay:= total;

//langsung dikaIikan



//header
    total:= grid.ColumnSum(colTotal, 1, grid.RowCount-1);

//header

  txtSubtotal.Text:= FloatToStrFmt(total, True);

//recalculate after ApplliedProdukTotal

  total:= StrFmtToFloatDef(txtSubtotal.Text,0, True); //%
  txtSubtotal.Text:= FloatToStrFmt(total, True);
//  disTotalVal:= StrFmtToFloatDef(lblDiscountRp.Caption,0); //rp
//  dp := StrFmtToFloatDef(lblUangMuka.Caption,0);
  disTotal:= 0;//StrFmtToFloatDef(lblDisc.Caption,0); //%
  disTotal:= (disTotal/100) * (total);

  total:= (total) - disTotal - disTotalVal - dp ;

  txtTotal.Text:= FloatToStrFmt(total, true);
//  txtTax.Text:= lblGrangTotal.Caption;

 if isService then
//    asgService.Floats[colTotalDisplay,  xRow]:= totalDisplay //grid.Floats[colEmbalase,  xRow];
 else
    grid.Floats[colTotal,  xRow]:= totalDisplay + 0;//grid.Floats[colEmbalase,  xRow];


end;

procedure TfrmTrsSales.btnSaveHoldedClick(Sender: TObject);
begin
  inherited;
   SaveHolded
end;

procedure TfrmTrsSales.btnLoadHoldedClick(Sender: TObject);
begin
  inherited;
  HoldedTrx;
end;

procedure TfrmTrsSales.Button1Click(Sender: TObject);
begin
  inherited;
Self.Print;
end;

procedure TfrmTrsSales.tbtPrintUlangClick(Sender: TObject);
begin
  inherited;
  Print;
end;

end.

