--Step 1 - Create Staging Table

--CREATE TABLE iemCommon.dbo._IEM_StagedGroupAuthorization (
--    SiteRef NVARCHAR(10),
--    Groupname NVARCHAR(100),
--    ObjectName1 NVARCHAR(100),
--    ObjectType INT,
--    ObjectName2 NVARCHAR(100),
--    UserFlag BIT,
--    GroupID INT,
--    ReadPrivilege BIT,
--    UpdatePrivilege BIT,
--    BulkUpdatePrivilege BIT,
--    InsertPrivilege BIT,
--    DeletePrivilege BIT,
--    EditPrivilege BIT,
--    ExecutePrivilege BIT
--);

--Step 2 - Run the Insert Statment to Insert Authorizations to Staging Table.

INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounting_Management', 'APPostedTransactionsDetail.gen2', 0, 'APPostedTransactionsDetail.gen2', 0, 301, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounting_Management', 'APPostedTransactionsDetailTile.gen2', 0, 'APPostedTransactionsDetailTile.gen2', 0, 301, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APVouchersandAdjustmentsTile.gen2', 0, 'APVouchersandAdjustmentsTile.gen2', 0, 276, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPostedTransactionsSummary.gen2', 0, 'APPostedTransactionsSummary.gen2', 0, 276, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPostedTransactionsSummaryTile.gen2', 0, 'APPostedTransactionsSummaryTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APRecurringVoucherGeneration.gen2', 0, 'APRecurringVoucherGeneration.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APVoucherPosting.gen2', 0, 'APVoucherPosting.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APVouchersandAdjustments.gen2', 0, 'APVouchersandAdjustments.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPostedTransactionsDetailTile.gen2', 0, 'APPostedTransactionsDetailTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPaymentDistribution.gen2', 0, 'APPaymentDistribution.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPaymentGeneration.gen2', 0, 'APPaymentGeneration.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPayments.gen2', 0, 'APPayments.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPaymentsTile.gen2', 0, 'APPaymentsTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APPostedTransactionsDetail.gen2', 0, 'APPostedTransactionsDetail.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'BankCodes.gen2', 0, 'BankCodes.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'APWirePosting.gen2', 0, 'APWirePosting.gen2', 0, 276, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'GenerateAPTransactions.gen2', 0, 'GenerateAPTransactions.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'GenerateAPTransactionsTile.gen2', 0, 'GenerateAPTransactionsTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'GLPostedTransactions.gen2', 0, 'GLPostedTransactions.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'Items.gen2', 0, 'Items.gen2', 0, 276, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'JournalEntries.gen2', 0, 'JournalEntries.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'RecurringVoucherDistribution.gen2', 0, 'RecurringVoucherDistribution.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'RecurringVouchers.gen2', 0, 'RecurringVouchers.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'RecurringVouchersTile.gen2', 0, 'RecurringVouchersTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'VendorInteractions.gen2', 0, 'VendorInteractions.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'VendorInteractionsTile.gen2', 0, 'VendorInteractionsTile.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Payable', 'VoucherAdjustmentDistribution.gen2', 0, 'VoucherAdjustmentDistribution.gen2', 0, 276, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'RMACreditMemo.gen2', 0, 'RMACreditMemo.gen2', 0, 307, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 307, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'OrderInvoicingCreditMemo.gen2', 0, 'OrderInvoicingCreditMemo.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'Items.gen2', 0, 'Items.gen2', 0, 307, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'InvoicePosting.gen2', 0, 'InvoicePosting.gen2', 0, 307, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'GenerateAPTransactionsTile.gen2', 0, 'GenerateAPTransactionsTile.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'GenerateAPTransactions.gen2', 0, 'GenerateAPTransactions.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'InvoicesDebitandCreditMemos.gen2', 0, 'InvoicesDebitandCreditMemos.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'InvoicesDebitandCreditMemosGLDistribution.gen2', 0, 'InvoicesDebitandCreditMemosGLDistribution.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'InvoicesDebitandCreditMemosTile.gen2', 0, 'InvoicesDebitandCreditMemosTile.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPaymentDistributions.gen2', 0, 'ARPaymentDistributions.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPaymentPosting.gen2', 0, 'ARPaymentPosting.gen2', 0, 307, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPayments.gen2', 0, 'ARPayments.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPostedTransactionsDetail.gen2', 0, 'ARPostedTransactionsDetail.gen2', 0, 307, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPostedTransactionsSummary.gen2', 0, 'ARPostedTransactionsSummary.gen2', 0, 307, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARPostedTransactionsSummaryTile.gen2', 0, 'ARPostedTransactionsSummaryTile.gen2', 0, 307, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'ARWirePosting.gen2', 0, 'ARWirePosting.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'CustomerInteractions.gen2', 0, 'CustomerInteractions.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'CustomerInteractionsTile.gen2', 0, 'CustomerInteractionsTile.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 307, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 307, 1, 1, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Accounts_Receivable', 'Customers.gen2', 0, 'Customers.gen2', 0, 307, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'APWirePosting.gen2', 0, 'APWirePosting.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'ControllerHome.gen2', 0, 'ControllerHome.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'BankCodes.gen2', 0, 'BankCodes.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'ChartofAccounts.gen2', 0, 'ChartofAccounts.gen2', 0, 278, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'APVouchersandAdjustments.gen2', 0, 'APVouchersandAdjustments.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'APVouchersandAdjustmentsTile.gen2', 0, 'APVouchersandAdjustmentsTile.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'InvoicesDebitandCreditMemosTile.gen2', 0, 'InvoicesDebitandCreditMemosTile.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'InvoicesDebitandCreditMemosGLDistribution.gen2', 0, 'InvoicesDebitandCreditMemosGLDistribution.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'InvoicesDebitandCreditMemos.gen2', 0, 'InvoicesDebitandCreditMemos.gen2', 0, 278, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'GLPostedTransactions.gen2', 0, 'GLPostedTransactions.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'OrderInvoicingCreditMemo.gen2', 0, 'OrderInvoicingCreditMemo.gen2', 0, 278, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'JournalEntries.gen2', 0, 'JournalEntries.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 278, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 278, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'SalesPersons.gen2', 0, 'SalesPersons.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'UnpostedJobTransactions.gen2', 0, 'UnpostedJobTransactions.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'VoucherAdjustmentDistribution.gen2', 0, 'VoucherAdjustmentDistribution.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'VoucherAuthorization.gen2', 0, 'VoucherAuthorization.gen2', 0, 278, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ACCT', 'UnpostedJobTransactionsTile.gen2', 0, 'UnpostedJobTransactionsTile.gen2', 0, 278, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'TimePhasedInventoryStatusTile.gen2', 0, 'TimePhasedInventoryStatusTile.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'TransferOrders.gen2', 0, 'TransferOrders.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'TimePhasedInventoryStatus.gen2', 0, 'TimePhasedInventoryStatus.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'TransferOrderLineItems.gen2', 0, 'TransferOrderLineItems.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'SerialNumbers.gen2', 0, 'SerialNumbers.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'SalesPersons.gen2', 0, 'SalesPersons.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'SalesPersonsTile.gen2', 0, 'SalesPersonsTile.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'RMAs.gen2', 0, 'RMAs.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'RMALineItems.gen2', 0, 'RMALineItems.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'PlanningDetail.gen2', 0, 'PlanningDetail.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'OrderShipments.gen2', 0, 'OrderShipments.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'Non-InventoryItems.gen2', 0, 'Non-InventoryItems.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'OrderShipmentsTile.gen2', 0, 'OrderShipmentsTile.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemAvailability.gen2', 0, 'ItemAvailability.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemAvailabilityTile.gen2', 0, 'ItemAvailabilityTile.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemCostsTile.gen2', 0, 'ItemCostsTile.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'Items.gen2', 0, 'Items.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemPricing.gen2', 0, 'ItemPricing.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemPricingTile.gen2', 0, 'ItemPricingTile.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'Customers.gen2', 0, 'Customers.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'EngineeringChangeNoticeItems.gen2', 0, 'EngineeringChangeNoticeItems.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'EngineeringChangeNotices.gen2', 0, 'EngineeringChangeNotices.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'CustomerContractsTile.gen2', 0, 'CustomerContractsTile.gen2', 0, 280, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'CurrentMaterials.gen2', 0, 'CurrentMaterials.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Core', 'CustomerContracts.gen2', 0, 'CustomerContracts.gen2', 0, 280, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'EstimatedMaterials.gen2', 0, 'EstimatedMaterials.gen2', 0, 338, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'EstimatedOperations.gen2', 0, 'EstimatedOperations.gen2', 0, 338, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'EstimateJobOrders.gen2', 0, 'EstimateJobOrders.gen2', 0, 338, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'EstimateJobOrdersTile.gen2', 0, 'EstimateJobOrdersTile.gen2', 0, 338, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'EstimateLines.gen2', 0, 'EstimateLines.gen2', 0, 338, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Costing', 'Estimates.gen2', 0, 'Estimates.gen2', 0, 338, 1, 0, 1, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 293, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'Items.gen2', 0, 'Items.gen2', 0, 293, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'ItemLotLocations.gen2', 0, 'ItemLotLocations.gen2', 0, 293, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'ItemLotLocationsTile.gen2', 0, 'ItemLotLocationsTile.gen2', 0, 293, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'InventoryControlHome.gen2', 0, 'InventoryControlHome.gen2', 0, 293, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'MiscellaneousReceipt.gen2', 0, 'MiscellaneousReceipt.gen2', 0, 293, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'MiscellaneousIssue.gen2', 0, 'MiscellaneousIssue.gen2', 0, 293, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 293, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'QuantityMove.gen2', 0, 'QuantityMove.gen2', 0, 293, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'QuantityAdjustment.gen2', 0, 'QuantityAdjustment.gen2', 0, 293, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_CycleCount', 'SerialNumbers.gen2', 0, 'SerialNumbers.gen2', 0, 293, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_DocTrak', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 292, 1, 0, 0, 1, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 281, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 281, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'CopyRoutingBOM.gen2', 0, 'CopyRoutingBOM.gen2', 0, 281, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'Items.gen2', 0, 'Items.gen2', 0, 281, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 281, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 281, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 281, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'JobBOMCostRollUp.gen2', 0, 'JobBOMCostRollUp.gen2', 0, 281, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 281, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'TimePhasedInventoryStatus.gen2', 0, 'TimePhasedInventoryStatus.gen2', 0, 281, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Engineering', 'TimePhasedInventoryStatusTile.gen2', 0, 'TimePhasedInventoryStatusTile.gen2', 0, 281, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'SerialNumbers.gen2', 0, 'SerialNumbers.gen2', 0, 282, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 282, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'QuantityAdjustment.gen2', 0, 'QuantityAdjustment.gen2', 0, 282, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'QuantityMove.gen2', 0, 'QuantityMove.gen2', 0, 282, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'Items.gen2', 0, 'Items.gen2', 0, 282, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 282, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 282, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'ItemLotLocations.gen2', 0, 'ItemLotLocations.gen2', 0, 282, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Inventory', 'ItemLotLocationsTile.gen2', 0, 'ItemLotLocationsTile.gen2', 0, 282, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_InventoryAdjustments', 'MiscellaneousIssue.gen2', 0, 'MiscellaneousIssue.gen2', 0, 298, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_InventoryAdjustments', 'MiscellaneousReceipt.gen2', 0, 'MiscellaneousReceipt.gen2', 0, 298, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ItemCostEdit', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 394, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Items', 'Items.gen2', 0, 'Items.gen2', 0, 323, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 294, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 294, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 294, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 294, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 294, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 294, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 294, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_MaterialsAdmin', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 294, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'RMALineItems.gen2', 0, 'RMALineItems.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'RMAs.gen2', 0, 'RMAs.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'Items.gen2', 0, 'Items.gen2', 0, 283, 1, 1, 0, 1, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 283, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 283, 1, 1, 1, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'Customers.gen2', 0, 'Customers.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Order_Entry', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 283, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_PM', 'ARPostedTransactionsDetail.gen2', 0, 'ARPostedTransactionsDetail.gen2', 0, 289, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_POHoldRelease', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 318, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_POs', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 300, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_POs', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 300, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_POs', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 300, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_POs', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 300, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 327, 1, 1, 1, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 327, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 327, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 327, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 327, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'CurrentMaterials.gen2', 0, 'CurrentMaterials.gen2', 0, 327, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 327, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_ProductDevelopment', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 327, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Production', 'Items.gen2', 0, 'Items.gen2', 0, 284, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Production', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 284, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Production', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 284, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Production', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 284, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'MaterialPlannerWorkbench.gen2', 0, 'MaterialPlannerWorkbench.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'MaterialPlannerWorkbenchFirmJob.gen2', 0, 'MaterialPlannerWorkbenchFirmJob.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'MaterialPlannerWorkbenchFirmPO.gen2', 0, 'MaterialPlannerWorkbenchFirmPO.gen2', 0, 285, 1, 0, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'MaterialPlannerWorkbenchFirmTransferOrder.gen2', 0, 'MaterialPlannerWorkbenchFirmTransferOrder.gen2', 0, 285, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'MaterialPlannerWorkbenchSummary.gen2', 0, 'MaterialPlannerWorkbenchSummary.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'Non-InventoryItems.gen2', 0, 'Non-InventoryItems.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 285, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 285, 1, 0, 1, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 285, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'RMACreditMemo.gen2', 0, 'RMACreditMemo.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'RMAs.gen2', 0, 'RMAs.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'RMALineItems.gen2', 0, 'RMALineItems.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'Items.gen2', 0, 'Items.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 285, 1, 1, 0, 1, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 285, 1, 1, 0, 1, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemCostsTile.gen2', 0, 'ItemCostsTile.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 285, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'Customers.gen2', 0, 'Customers.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'APPostedTransactionsDetail.gen2', 0, 'APPostedTransactionsDetail.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'APPostedTransactionsDetailTile.gen2', 0, 'APPostedTransactionsDetailTile.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'TransferOrderLineItems.gen2', 0, 'TransferOrderLineItems.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'TransferOrders.gen2', 0, 'TransferOrders.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'UnpostedJobTransactions.gen2', 0, 'UnpostedJobTransactions.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'TransferOrderShip.gen2', 0, 'TransferOrderShip.gen2', 0, 285, 1, 1, 1, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'TransferOrderReceive.gen2', 0, 'TransferOrderReceive.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 285, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'VendorInteractions.gen2', 0, 'VendorInteractions.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'VendorContractsTile.gen2', 0, 'VendorContractsTile.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'UnpostedJobTransactionsTile.gen2', 0, 'UnpostedJobTransactionsTile.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'VendorContractPrices.gen2', 0, 'VendorContractPrices.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'VendorContracts.gen2', 0, 'VendorContracts.gen2', 0, 285, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing', 'VendorInteractionsTile.gen2', 0, 'VendorInteractionsTile.gen2', 0, 285, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'VendorInteractionsTile.gen2', 0, 'VendorInteractionsTile.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'UnpostedJobTransactionsTile.gen2', 0, 'UnpostedJobTransactionsTile.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'VendorContracts.gen2', 0, 'VendorContracts.gen2', 0, 329, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'VendorContractPrices.gen2', 0, 'VendorContractPrices.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'TransferOrderShip.gen2', 0, 'TransferOrderShip.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'UnpostedJobTransactions.gen2', 0, 'UnpostedJobTransactions.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'VendorContractsTile.gen2', 0, 'VendorContractsTile.gen2', 0, 329, 1, 1, 1, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'VendorInteractions.gen2', 0, 'VendorInteractions.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'TransferOrderReceive.gen2', 0, 'TransferOrderReceive.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'TransferOrders.gen2', 0, 'TransferOrders.gen2', 0, 329, 1, 1, 1, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 329, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'TransferOrderLineItems.gen2', 0, 'TransferOrderLineItems.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'RMAs.gen2', 0, 'RMAs.gen2', 0, 329, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'APPostedTransactionsDetail.gen2', 0, 'APPostedTransactionsDetail.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'APPostedTransactionsDetailTile.gen2', 0, 'APPostedTransactionsDetailTile.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 329, 1, 1, 0, 1, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemCostsTile.gen2', 0, 'ItemCostsTile.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'Customers.gen2', 0, 'Customers.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 329, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 329, 1, 0, 0, 1, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemPricing.gen2', 0, 'ItemPricing.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemPricingTile.gen2', 0, 'ItemPricingTile.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'RMACreditMemo.gen2', 0, 'RMACreditMemo.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'RMALineItems.gen2', 0, 'RMALineItems.gen2', 0, 329, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 329, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 329, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PlanningDetail.gen2', 0, 'PlanningDetail.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'PostJobTransactions.gen2', 0, 'PostJobTransactions.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'Non-InventoryItems.gen2', 0, 'Non-InventoryItems.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchSummary.gen2', 0, 'MaterialPlannerWorkbenchSummary.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchFirmTransferOrder.gen2', 0, 'MaterialPlannerWorkbenchFirmTransferOrder.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchFirmPO.gen2', 0, 'MaterialPlannerWorkbenchFirmPO.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchFirmPR.gen2', 0, 'MaterialPlannerWorkbenchFirmPR.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchFirmPS.gen2', 0, 'MaterialPlannerWorkbenchFirmPS.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbenchFirmJob.gen2', 0, 'MaterialPlannerWorkbenchFirmJob.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Purchasing_ReadOnly', 'MaterialPlannerWorkbench.gen2', 0, 'MaterialPlannerWorkbench.gen2', 0, 329, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS', 'MiscellaneousIssue.gen2', 0, 'MiscellaneousIssue.gen2', 0, 314, 1, 0, 1, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS', 'QuantityMove.gen2', 0, 'QuantityMove.gen2', 0, 314, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All', 'QC_Vendors.gen2', 0, 'QC_Vendors.gen2', 0, 330, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All', 'QuantityAdjustment.gen2', 0, 'QuantityAdjustment.gen2', 0, 330, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All', 'MiscellaneousIssue.gen2', 0, 'MiscellaneousIssue.gen2', 0, 330, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All_ReadOnly', 'MiscellaneousIssue.gen2', 0, 'MiscellaneousIssue.gen2', 0, 336, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All_ReadOnly', 'QC_Vendors.gen2', 0, 'QC_Vendors.gen2', 0, 336, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_QCS_All_ReadOnly', 'QuantityMove.gen2', 0, 'QuantityMove.gen2', 0, 336, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'PlanningDetail.gen2', 0, 'PlanningDetail.gen2', 0, 286, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 286, 1, 0, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'ItemCostsTile.gen2', 0, 'ItemCostsTile.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Sales', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 286, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'UnpostedJobTransactionsTile.gen2', 0, 'UnpostedJobTransactionsTile.gen2', 0, 288, 1, 0, 0, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'ShipmentMaster.gen2', 0, 'ShipmentMaster.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'TransferOrderLineItems.gen2', 0, 'TransferOrderLineItems.gen2', 0, 288, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'TransferOrders.gen2', 0, 'TransferOrders.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'TransferOrderReceive.gen2', 0, 'TransferOrderReceive.gen2', 0, 288, 1, 1, 0, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'TransferOrderShip.gen2', 0, 'TransferOrderShip.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'UnpostedJobTransactions.gen2', 0, 'UnpostedJobTransactions.gen2', 0, 288, 1, 0, 0, 0, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 288, 1, 1, 0, 0, 0, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 288, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'OrderShipping.gen2', 0, 'OrderShipping.gen2', 0, 288, 1, 0, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 288, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'PurchaseOrderReceiving.gen2', 0, 'PurchaseOrderReceiving.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_Shipping-Receiving', 'RMAReturnTransaction.gen2', 0, 'RMAReturnTransaction.gen2', 0, 288, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_StaffAccountant', 'ChartofAccounts.gen2', 0, 'ChartofAccounts.gen2', 0, 328, 1, 1, 1, 1, 1, 1, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'CustomerOrderLines.gen2', 0, 'CustomerOrderLines.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'CustomerContracts.gen2', 0, 'CustomerContracts.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'CurrentMaterials.gen2', 0, 'CurrentMaterials.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'CustomerOrders.gen2', 0, 'CustomerOrders.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'Customers.gen2', 0, 'Customers.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemStockroomLocations.gen2', 0, 'ItemStockroomLocations.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemStockroomLocationsTile.gen2', 0, 'ItemStockroomLocationsTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'Items.gen2', 0, 'Items.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemPricingTile.gen2', 0, 'ItemPricingTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemPricing.gen2', 0, 'ItemPricing.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemCostsTile.gen2', 0, 'ItemCostsTile.gen2', 0, 309, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemCosts.gen2', 0, 'ItemCosts.gen2', 0, 309, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemAvailabilityTile.gen2', 0, 'ItemAvailabilityTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemAvailability.gen2', 0, 'ItemAvailability.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'RMALineItems.gen2', 0, 'RMALineItems.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'RMAs.gen2', 0, 'RMAs.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'SalesPersonsTile.gen2', 0, 'SalesPersonsTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'SalesPersons.gen2', 0, 'SalesPersons.gen2', 0, 309, 1, 1, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'PurchaseOrders.gen2', 0, 'PurchaseOrders.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'PurchaseOrderLines.gen2', 0, 'PurchaseOrderLines.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'PurchaseOrderBlanketReleases.gen2', 0, 'PurchaseOrderBlanketReleases.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'PlanningDetail.gen2', 0, 'PlanningDetail.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'PurchaseOrderBlanketLines.gen2', 0, 'PurchaseOrderBlanketLines.gen2', 0, 309, 1, 0, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'OrderShipmentsTile.gen2', 0, 'OrderShipmentsTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'OrderShipments.gen2', 0, 'OrderShipments.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'Non-InventoryItems.gen2', 0, 'Non-InventoryItems.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'JobMaterials.gen2', 0, 'JobMaterials.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemWarehouses.gen2', 0, 'ItemWarehouses.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ItemWarehousesTile.gen2', 0, 'ItemWarehousesTile.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'JobOrders.gen2', 0, 'JobOrders.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'JobOperations.gen2', 0, 'JobOperations.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'TransferOrders.gen2', 0, 'TransferOrders.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'TimePhasedInventoryStatusTile.gen2', 0, 'TimePhasedInventoryStatusTile.gen2', 0, 309, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'TransferOrderLineItems.gen2', 0, 'TransferOrderLineItems.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'TimePhasedInventoryStatus.gen2', 0, 'TimePhasedInventoryStatus.gen2', 0, 309, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'ShipTos.gen2', 0, 'ShipTos.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'SerialNumbers.gen2', 0, 'SerialNumbers.gen2', 0, 309, 1, 1, 0, 0, 0, 0, 1);
INSERT INTO iemCommon.dbo._IEM_StagedGroupAuthorization VALUES ('FRE', '_IEM_TrackingNumbers', 'Vendors.gen2', 0, 'Vendors.gen2', 0, 309, 1, 1, 1, 0, 0, 0, 1);

SELECT * FROM iemCommon.dbo._IEM_StagedGroupAuthorization

--Step 3 - Insert into Primary Table Manually OR Use Step 4 to Run SP

INSERT INTO UFRE_App.dbo.AccountAuthorizations_mst (
    SiteRef,
    ObjectName1,
    ObjectType,
	ObjectName2,
    UserFlag,
    Id,
    ReadPrivilege,
    UpdatePrivilege,
    BulkUpdatePrivilege,
    InsertPrivilege,
    DeletePrivilege,
    EditPrivilege,
    ExecutePrivilege
)
SELECT
    SiteRef,
    ObjectName1,
    ObjectType,
    ObjectName2,
    UserFlag,
    GroupId,
    ReadPrivilege,
    UpdatePrivilege,
    BulkUpdatePrivilege,
    InsertPrivilege,
    DeletePrivilege,
    EditPrivilege,
    ExecutePrivilege
FROM iemCommon.dbo._IEM_StagedGroupAuthorization;

--Step 4 - Run dbo._IEM_LoadPermsFromStaging to Insert 

EXECUTE UFRE_App.dbo._IEM_LoadPermsFromStaging;

--STep 5 - Clean Up Staging Table

TRUNCATE TABLE iemCommon.dbo._IEM_StagedGroupAuthorization;

