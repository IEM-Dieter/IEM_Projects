--Used for determining what permission groups give access to specific forms

SELECT GroupName, GroupDesc, AccountAuthorizations_mst.ObjectName1 AS [Form], DeletePrivilege, EditPrivilege, ExecutePrivilege, InsertPrivilege, ReadPrivilege, UpdatePrivilege, BulkUpdatePrivilege, Uf_NotePrivilege, AccountAuthorizations_mst.UpdatedBy, AccountAuthorizations_mst.RecordDate
FROM AccountAuthorizations_mst
JOIN GroupNames ON AccountAuthorizations_mst.id = GroupNames.GroupId
WHERE AccountAuthorizations_mst.ObjectName1 = 'PurchaseOrderListing' AND ExecutePrivilege = 1