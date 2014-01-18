program Gania;

uses
  Forms,
  DatabaseConnection in '..\_connection_\DatabaseConnection.pas' {frmDatabaseConnection},
  MySQLConnector in '..\_connection_\MySQLConnector.pas',
  uMysqlClient in '..\_connection_\uMysqlClient.pas',
  uMysqlCT in '..\_connection_\uMysqlCT.pas',
  uMysqlErrors in '..\_connection_\uMysqlErrors.pas',
  uMysqlHelpers in '..\_connection_\uMysqlHelpers.pas',
  uMysqlNet in '..\_connection_\uMysqlNet.pas',
  uMysqlNewPassword in '..\_connection_\uMysqlNewPassword.pas',
  umysqlsha1 in '..\_connection_\umysqlsha1.pas',
  uMysqlSSL in '..\_connection_\uMysqlSSL.pas',
  uMysqlVio in '..\_connection_\uMysqlVio.pas',
  AutoStockLine in '..\_global\StockLine\AutoStockLine.pas',
  About in '..\_global\About.pas' {frmAbout},
  AddUser in '..\_global\AddUser.pas' {frmAddUser},
  bcchksum in '..\_global\bcchksum.pas',
  ChangePassword in '..\_global\ChangePassword.pas' {frmChangePassword},
  EpsonUtils in '..\_global\EpsonUtils.pas',
  frmDockForm in '..\_global\frmDockForm.pas' {DockForm},
  HtmlHlp in '..\_global\HtmlHlp.pas',
  KelolaUser in '..\_global\KelolaUser.pas' {frmKelolaUser},
  Login in '..\_global\Login.pas' {frmLogin},
  LookupData in '..\_global\LookupData.pas' {frmLookup},
  MainMenu in 'MainMenu.pas' {frmMainMenu},
  Option in '..\_global\Option.pas' {frmOption},
  Subroutines in '..\_global\Subroutines.pas',
  UConst in '..\_global\UConst.pas',
  UConstTool in '..\_global\UConstTool.pas',
  UQueryPackage in '..\_global\UQueryPackage.pas',
  UTransaction in '..\_global\UTransaction.pas',
  MstCode in '..\_master\MstCode.pas' {frmMstCode},
  MstCodeList in '..\_master\MstCodeList.pas' {frmMstCodeList},
  MstItemPriceListPrint in '..\_master\MstItemPriceListPrint.pas' {qrpItemPriceList: TQuickRep},
  MstUnit in '..\_master\MstUnit.pas' {frmMstUnit},
  ReportItemMovementPrint in '..\_report\ReportItemMovementPrint.pas' {qrpReportItemMovement: TQuickRep},
  ReportItemMutasiPrint in '..\_report\ReportItemMutasiPrint.pas' {qrpReportItemMutasi: TQuickRep},
  ReportItemQty in '..\_report\ReportItemQty.pas' {frmReportItemQty},
  ReportJualPrint in '..\_report\ReportJualPrint.pas' {qrpReportJual: TQuickRep},
  ReportGiro in '..\_report\ReportGiro.pas' {frmReportGiro},
  ReportPembelianPrint in '..\_report\ReportPembelianPrint.pas' {qrpReportPembelian: TQuickRep},
  ReportKas in '..\_report\ReportKas.pas' {frmReportKas},
  RepotItemStokPrint in '..\_report\RepotItemStokPrint.pas' {qrpRepotItemStok: TQuickRep},
  TrsItemUsetList in '..\_transaction\Shipment\TrsItemUsetList.pas' {frmTrsItemUseList},
  BackupRestore in '..\_global\BackupRestore.pas' {frmBackupRestore},
  FormOpnamePrint in '..\_transaction\Shipment\FormOpnamePrint.pas' {qrpFormOpname: TQuickRep},
  PasienListPrint in '..\_master\PasienListPrint.pas' {qrpPasienList: TQuickRep},
  MstRelationList in '..\_master\MstRelationList.pas' {frmMstRelationList},
  SupplierListPrint in '..\_master\SupplierListPrint.pas' {qrpSupplierList: TQuickRep},
  MstItem in '..\_master\MstItem.pas' {frmMstItem},
  trsPurchaseOrder in '..\_transaction\Purchase\trsPurchaseOrder.pas' {frmTrsPurchaseOrder},
  trsPurchaseOrderList in '..\_transaction\Purchase\trsPurchaseOrderList.pas' {frmTrsPurchaseOrderList},
  LookupTrx in '..\_global\LookupTrx.pas' {frmLookupTrx},
  PurchaseOrderPrint in '..\_transaction\Purchase\PurchaseOrderPrint.pas' {qrpPurchaseOrder: TQuickRep},
  trsReturPrint in '..\_transaction\Purchase\trsReturPrint.pas' {qrpRetur: TQuickRep},
  TrsItemUse in '..\_transaction\Shipment\TrsItemUse.pas' {frmTrsItemUse},
  UMaster in '..\_global\UMaster.pas',
  UPetshop in '..\_global\UPetshop.pas',
  MstRelation in '..\_master\MstRelation.pas' {frmMstRelation},
  MstItemList in '..\_master\MstItemList.pas' {frmMstItemList},
  MstBranchListPrint in '..\_master\MstBranchListPrint.pas' {qrpMstBranchList: TQuickRep},
  MstBranch in '..\_master\MstBranch.pas' {frmMstBranch},
  MstBranchList in '..\_master\MstBranchList.pas' {frmMstBranchList},
  TrsItemShipment in '..\_transaction\Shipment\TrsItemShipment.pas' {frmTrsItemShipment},
  Bonus in '..\_global\Bonus.pas' {frmBonus},
  MstItemPriceList in '..\_master\MstItemPriceList.pas' {frmMstItemPriceList},
  RawPrintPrev in '..\_global\RawPrintPrev.pas' {RawPrintPreview},
  mstItemListPrint in '..\_master\mstItemListPrint.pas' {qrpItemList: TQuickRep},
  trsTransaksiKasList in '..\_transaction\Finance\trsTransaksiKasList.pas' {frmTrsTransaksiKasList},
  MoneyTransaction in '..\_transaction\Finance\MoneyTransaction.pas' {frmMoneyTransaction},
  ReportStok in '..\_report\ReportStok.pas' {frmReportStok},
  DraftOpnamePrint in '..\_transaction\Shipment\DraftOpnamePrint.pas' {qrpDraftOpname: TQuickRep},
  MstAkun in '..\_master\MstAkun.pas' {frmMstAkun},
  TrsItemShipmentList in '..\_transaction\Shipment\TrsItemShipmentList.pas' {frmTrsItemShipmentList},
  trsReturSales in '..\_transaction\Sales\trsReturSales.pas' {frmTrsReturSales},
  ReportProfitPrint in '..\_report\ReportProfitPrint.pas' {qrpReportProfit: TQuickRep},
  ReportProfit in '..\_report\ReportProfit.pas' {frmReportProfit},
  ReportPenjualan1Print in '..\_report\ReportPenjualan1Print.pas' {qrpReportPenjualan1: TQuickRep},
  trsPembayaranListPrint in '..\_transaction\Finance\trsPembayaranListPrint.pas' {qrpPembayaranListPrint: TQuickRep},
  trsPurchaseOrderListPrint in '..\_transaction\Purchase\trsPurchaseOrderListPrint.pas' {qrpPurchaseOrderListPrint: TQuickRep},
  trsReceipt in '..\_transaction\Purchase\trsReceipt.pas' {frmTrsReceipt},
  trsSalesGania in '..\_transaction\Sales\trsSalesGania.pas' {frmTrsSales},
  trsRetur in '..\_transaction\Purchase\trsRetur.pas' {frmTrsRetur},
  trsPembayaran in '..\_transaction\Finance\trsPembayaran.pas' {frmTrsPembayaran},
  ReportDebt in '..\_report\ReportDebt.pas' {frmReportDebt},
  ReportSupplierSaldoPrint in '..\_report\ReportSupplierSaldoPrint.pas' {qrpReportSupplierSaldo: TQuickRep},
  ReportBeliPrint in '..\_report\ReportBeliPrint.pas' {qrpReportBeli: TQuickRep},
  ReportPenjualan in '..\_report\ReportPenjualan.pas' {frmReportPenjualan},
  ReportPenjualan2Print in '..\_report\ReportPenjualan2Print.pas' {qrpReportPenjualan2: TQuickRep},
  ReportPembelian2Print in '..\_report\ReportPembelian2Print.pas' {qrpReportPembelian2: TQuickRep},
  ReportPembelian in '..\_report\ReportPembelian.pas' {frmReportPembelian},
  trsSalesHoldedList in '..\_transaction\Sales\trsSalesHoldedList.pas' {frmTrsSalesHoldedList},
  PengeluaranKas in '..\_transaction\Finance\PengeluaranKas.pas' {frmPengeluaranKas},
  trsPembayaranList in '..\_transaction\Finance\trsPembayaranList.pas' {frmTrsPembayaranList};

{$R *.res}

begin
  Application.Initialize;
  InitializeApplication;

  Application.CreateForm(TfrmMainMenu, frmMainMenu);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmLookupTrx, frmLookupTrx);
  Application.CreateForm(TfrmMoneyTransaction, frmMoneyTransaction);
  Application.CreateForm(TfrmPengeluaranKas, frmPengeluaranKas);
  frmLogin.Status('Prepare Application...');
  frmLogin.Status('Connecting database...');
  Application.CreateForm(TfrmBackupRestore, frmBackupRestore);
  Application.CreateForm(TfrmDatabaseConnection, frmDatabaseConnection);
  ConnetToDB;

  frmLogin.Status('Loading system setting...');
  Application.CreateForm(TDockForm, DockForm);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmAddUser, frmAddUser);
  Application.CreateForm(TfrmChangePassword, frmChangePassword);
  Application.CreateForm(TfrmOption, frmOption);

  frmLogin.Status('Loading master module(s)...');
  //Application.CreateForm(TfrmLookupTrx, frmLookupTrx);
  Application.CreateForm(TfrmMstCodeList, frmMstCodeList);
  Application.CreateForm(TfrmMstItem, frmMstItem);

  frmLogin.Status('dumping dockable module(s)...');
  frmLogin.Status('Loading sales module(s)...');
  Application.CreateForm(TfrmMstRelation, frmMstRelation);
  Application.CreateForm(TfrmLookup, frmLookup);


  frmLogin.Status('Launch Application...');
  frmLogin.Status;
  RearrangeForms;
  Application.Run;
end.
