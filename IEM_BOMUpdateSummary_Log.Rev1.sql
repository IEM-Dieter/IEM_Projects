DECLARE @sqlCommand nvarchar(max)
DECLARE @appDB nvarchar(255)
DECLARE @dbCounter int = 1
DECLARE @dbTotalCount int

-- Create and populate temp table to hold the mfg database names
DECLARE @mfgDBs TABLE (app_db_name nvarchar(255))

INSERT INTO @mfgDBs (app_db_name)
SELECT app_db_name FROM site WHERE (Uf_mfg = 1 OR Uf_Revenue = 1) -- Revenue for PASS

-- Get the total count of mfgDBs rows
SELECT @dbTotalCount = count(*) FROM @mfgDBs

-- Loop through the @mfgDBs
WHILE @dbCounter <= @dbTotalCount
BEGIN
    -- Set the database name for processing dynamic SQL
    SELECT @appDB = (SELECT app_db_name FROM @mfgDBs ORDER BY app_db_name OFFSET @dbCounter - 1 ROWS FETCH NEXT 1 ROW ONLY)

    -- Build the dynamic SQL
    SET @sqlCommand = N'
    INSERT INTO iemCommon.dbo._IEM_BOMUpdateSummary 
        (SummaryDate, Hour, Item, CreatedBy, SourceDatabase, SyncErrorType, UpdateCount)
    SELECT
        CAST(RecordDate AS DATE) AS SummaryDate,
        DATEPART(HOUR, RecordDate) AS Hour,
        Item,
        CreatedBy,
        ''' + @appDB + ''' AS SourceDatabase,
        CASE 
            WHEN syncError LIKE ''%dead%'' THEN ''Deadlock''
            WHEN syncError LIKE ''%released%'' THEN ''Failed - Jobs Released''
            WHEN syncError LIKE ''%revision%'' THEN ''Failed - Newer Revision''
            ELSE ''OtherError''
        END AS SyncErrorType,
        COUNT(*) AS UpdateCount
    FROM ' + @appDB + '.dbo._IEM_BOMUpdateLog
    WHERE RecordDate >= DATEADD(DAY, -1, CAST(GETDATE() AS DATE))
    AND (syncError LIKE ''%dead%'' OR syncError LIKE ''%released%'' OR syncError LIKE ''%revision%'')
    GROUP BY
        CAST(RecordDate AS DATE),
        DATEPART(HOUR, RecordDate),
        Item,
        CreatedBy,
        CASE 
            WHEN syncError LIKE ''%dead%'' THEN ''Deadlock''
            WHEN syncError LIKE ''%released%'' THEN ''Failed - Jobs Released''
            WHEN syncError LIKE ''%revision%'' THEN ''Failed - Newer Revision''
            ELSE ''OtherError''
        END'

    -- Print the SQL command for easy troubleshooting
 PRINT @sqlCommand

    -- Execute the dynamic SQL inside a transaction
    BEGIN TRANSACTION
    BEGIN TRY
        EXEC sp_executesql @sqlCommand
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION
        PRINT ERROR_MESSAGE()  -- Log or handle the error as needed
    END CATCH

    -- Increment the dbCounter for the next loop iteration
    SET @dbCounter = @dbCounter + 1
END

 -- For Reporting From the Summary Log
--SELECT sourcedatabase, COUNT(*) AS 'deadlocks',CONVERT(nvarchar(10),summarydate,20) AS 'date'
--FROM
--iemCommon.dbo._IEM_BOMUpdateSummary
--WHERE summarydate > '2025-05-23' AND syncerrortype LIKE '%dead%' 
--GROUP BY sourcedatabase, CONVERT(nvarchar(10),summarydate,20)