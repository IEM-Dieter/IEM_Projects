--Script used for recording & deleting permission groups from disabled users. 

--1. Run first portion ONCE to create initial table where records will be stored
USE iemCommon;
GO

CREATE TABLE dbo._IEM_DisabledUserGroups (
	UserId INT,
	UserName VARCHAR(255),
	Status INT,
	GroupId INT,
	GroupName VARCHAR(255),
	GroupDesc VARCHAR(255),
	DeletedDate DATETIME DEFAULT GETDATE()
);

USE YFRE_APP;
GO

--2. Run second portion to store the records being deleted in the table.
TRUNCATE TABLE iemCommon.dbo._IEM_DisabledUserGroups;

INSERT INTO iemCommon.dbo._IEM_DisabledUserGroups (UserId, UserName, Status, GroupId, GroupName, GroupDesc)
SELECT 
    u.UserId,
    u.UserName,
    u.Status,
    g.GroupId,
    g.GroupName,
    g.GroupDesc
FROM YFRE_APP.dbo.UserGroupMap_mst ugm
JOIN YFRE_APP.dbo.Usernames u ON u.UserId = ugm.UserId
JOIN YFRE_APP.dbo.Groupnames g ON g.GroupId = ugm.GroupId
WHERE u.Status = 2 -- AND u.UserName = 'aayush.koirala' -- Add this clause to test a single user

--3. Run this third portion to query the table and ensure records were recorded.  Review results as necessary.
SELECT 
    UserId,
    UserName,
    Status,
    GroupId,
    GroupName,
    GroupDesc,
	DeletedDate
FROM iemCommon.dbo._IEM_DisabledUserGroups;

--3. When your ready, run third portion actually delete the records.
DELETE FROM UserGroupMap_mst
WHERE UserId IN
(SELECT Usernames.UserId
FROM UserGroupMap_mst
JOIN Usernames ON Usernames.UserId = UserGroupMap_mst.UserId
WHERE Status = 2) -- AND Username = 'aayush.koirala' -- Add this clause to test a single user