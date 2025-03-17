--Used for finding what users are a part of what permission groups.

SELECT USERS.Username AS [User],  [GROUPS].GroupName AS [Group],  MAP.SiteRef, [GROUPS].GroupId, MAP.CreateDate AS [Created]
FROM (UserGroupMap_mst MAP inner join UserNames USERS on MAP.UserId = USERS.UserId) 
   Inner Join  GroupNames GROUPS on MAP.GroupId = GROUPS.GroupId
AND USERS.Status in (0,1)

--All groups appear assigned to user in FRE.  Some groups are not assigned in FRE but other sites. 