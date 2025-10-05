DECLARE @Site siteType;
SELECT TOP 1 @Site = site FROM site WHERE app_db_name = DB_NAME();
EXEC dbo.SetSiteSp @Site, NULL;
 
UPDATE Usernames SET ConcurrentSessions = 1, Status = 0
WHERE Username = 'aaron.dahl'

SELECT* FROM Usernames WHERE Username = 'aaron.dahl'


Me - 11508
Cindy - 33
Jesse - 11152