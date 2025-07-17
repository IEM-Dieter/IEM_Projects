--1. Used ONCE to Create Initial Table in iemCommon

--CREATE TABLE iemCommon.dbo._IEM_BOMUpdateSummary (
--    SummaryDate DATE,
--    Hour INT,
--    Item VARCHAR(100),
--    CreatedBy VARCHAR(100),
--    SourceDatabase VARCHAR(50),
--    SyncErrorType VARCHAR(50),
--    UpdateCount INT,
--    CreatedAt DATETIME DEFAULT GETDATE()
--);

--2. Capture failed BOM sync entries from XFRE
USE XFRE_App
GO

INSERT INTO iemCommon.dbo._IEM_BOMUpdateSummary (SummaryDate, Hour, Item, CreatedBy, SourceDatabase, SyncErrorType, UpdateCount)
SELECT
    CAST(RecordDate AS DATE) AS SummaryDate,
    DATEPART(HOUR, RecordDate) AS Hour,
    Item,
    CreatedBy,
    'XFRE_App' AS SourceDatabase,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END AS SyncErrorType,
    COUNT(*) AS UpdateCount
FROM XFRE_App.dbo._IEM_BOMUpdateLog
WHERE RecordDate >= DATEADD(DAY, -1, CAST(GETDATE() AS DATE))
  AND syncError LIKE '%dead%' OR syncError LIKE '%released%' OR syncError LIKE '%revision%' -- Only focus on meaningful sync outcomes
GROUP BY
    CAST(RecordDate AS DATE),
    DATEPART(HOUR, RecordDate),
    Item,
    CreatedBy,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END;

--3. Capture failed BOM sync entries from XJAX
USE XJAX_APP
GO

INSERT INTO iemCommon.dbo._IEM_BOMUpdateSummary (SummaryDate, Hour, Item, CreatedBy, SourceDatabase, SyncErrorType, UpdateCount)
SELECT
    CAST(RecordDate AS DATE) AS SummaryDate,
    DATEPART(HOUR, RecordDate) AS Hour,
    Item,
    CreatedBy,
    'XJAX_App' AS SourceDatabase,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END AS SyncErrorType,
    COUNT(*) AS UpdateCount
FROM XFRE_App.dbo._IEM_BOMUpdateLog
WHERE RecordDate >= DATEADD(DAY, -1, CAST(GETDATE() AS DATE))
  AND syncError LIKE '%dead%' OR syncError LIKE '%released%' OR syncError LIKE '%revision%' -- Only focus on meaningful sync outcomes
GROUP BY
    CAST(RecordDate AS DATE),
    DATEPART(HOUR, RecordDate),
    Item,
    CreatedBy,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END;

--3. Capture failed BOM sync entries from XVAN
USE XVAN_APP
GO

INSERT INTO iemCommon.dbo._IEM_BOMUpdateSummary (SummaryDate, Hour, Item, CreatedBy, SourceDatabase, SyncErrorType, UpdateCount)
SELECT
    CAST(RecordDate AS DATE) AS SummaryDate,
    DATEPART(HOUR, RecordDate) AS Hour,
    Item,
    CreatedBy,
    'XVAN_App' AS SourceDatabase,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END AS SyncErrorType,
    COUNT(*) AS UpdateCount
FROM XFRE_App.dbo._IEM_BOMUpdateLog
WHERE RecordDate >= DATEADD(DAY, -1, CAST(GETDATE() AS DATE))
  AND syncError LIKE '%dead%' OR syncError LIKE '%released%' OR syncError LIKE '%revision%' -- Only focus on meaningful sync outcomes
GROUP BY
    CAST(RecordDate AS DATE),
    DATEPART(HOUR, RecordDate),
    Item,
    CreatedBy,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END;

--3. Capture failed BOM sync entries from XPASS
USE XPASS_APP
GO

INSERT INTO iemCommon.dbo._IEM_BOMUpdateSummary (SummaryDate, Hour, Item, CreatedBy, SourceDatabase, SyncErrorType, UpdateCount)
SELECT
    CAST(RecordDate AS DATE) AS SummaryDate,
    DATEPART(HOUR, RecordDate) AS Hour,
    Item,
    CreatedBy,
    'XPASS_App' AS SourceDatabase,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END AS SyncErrorType,
    COUNT(*) AS UpdateCount
FROM XFRE_App.dbo._IEM_BOMUpdateLog
WHERE RecordDate >= DATEADD(DAY, -1, CAST(GETDATE() AS DATE))
  AND syncError LIKE '%dead%' OR syncError LIKE '%released%' OR syncError LIKE '%revision%' -- Only focus on meaningful sync outcomes
GROUP BY
    CAST(RecordDate AS DATE),
    DATEPART(HOUR, RecordDate),
    Item,
    CreatedBy,
    CASE 
        WHEN syncError LIKE '%dead%' THEN 'Deadlock'
		WHEN syncError LIKE '%released%' THEN 'Failed - Jobs Released'
		WHEN syncError LIKE '%revision%' THEN 'Failed - Newer Revision'
        ELSE 'OtherError'
    END;

--4. For Reporting Purposes

--SELECT 
--    SummaryDate,
--    Hour,
--    SourceDatabase,
--    Item,
--    SUM(UpdateCount) AS TotalUpdates
--FROM iemCommon.dbo._IEM_BOMUpdateSummary
--WHERE SummaryDate >= DATEADD(DAY, -30, GETDATE())
--GROUP BY SummaryDate, Hour, SourceDatabase, Item
--ORDER BY SummaryDate DESC, Hour, SourceDatabase;

--5. For Reporting From the Summary Log
--SELECT sourcedatabase, COUNT(*) AS 'deadlocks',CONVERT(nvarchar(10),summarydate,20) AS 'date'
--FROM
--iemCommon.dbo._IEM_BOMUpdateSummary
--WHERE summarydate > '2025-05-23' AND syncerrortype LIKE '%dead%' 
--GROUP BY sourcedatabase, CONVERT(nvarchar(10),summarydate,20)