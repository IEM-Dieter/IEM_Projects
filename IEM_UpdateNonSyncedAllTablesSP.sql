-- ========================================
-- IEM_UpdateNonSyncedAllTables - Stored Procedure
-- ========================================
                                                           
CREATE OR ALTER PROCEDURE [dbo].[_IEM_UpdateNonSyncedAllTablesSP]
(
    @Prefix NVARCHAR(50) = N'C',				-- Database Name Prefix (e.g., A, B, C, D, S, U or empty for PROD)
    @SpecificTables NVARCHAR(500) = N'trnitem_mst_all,transfer_mst_all',           -- Specific tables to process (comma-separated list)
    @Truncate INT = 1,                             -- 0 = NO / 1 = YES
    @Repopulate INT = 1                            -- 0 = NO / 1 = YES
)
AS
BEGIN

DECLARE @Site siteType, @MasterDB sysname                                                  
SELECT TOP 1 @Site = site, @MasterDB = app_db_name FROM site WHERE app_db_name = DB_NAME()  
EXEC dbo.SetSiteSp @Site, NULL  

    SET NOCOUNT ON;
    
    -- Assemble full master DB name
    DECLARE @MasterDB sysname;
    SET @MasterDB = @Prefix + 'FRE_App'; -- Builds full name like 'UFRE_App'

    -- Additional variables
    DECLARE @position INT,
            @RowCount INT,
            @sqlvar NVARCHAR(MAX),
            @listSiteAllTablesSql NVARCHAR(MAX),
            @dbname VARCHAR(255),
            @sitename VARCHAR(8),
            @SQLString NVARCHAR(500),
            @ParmDefinition NVARCHAR(500),
            @TableName SYSNAME,
            @CHAR39 NVARCHAR(1) = CHAR(39);

    DECLARE @Severity INT = 0,
            @allTablename SYSNAME,
            @allTableAllRows INT,
            @allTableBaseRows INT,
            @allTableSelectedRow INT,
            @allTableMessage NVARCHAR(255);

    DECLARE @DisableReplication INT,
            @OperationType INT,
            @IncludeAllSitesinIntranet INT;

    -- Variables for table filtering
    DECLARE @ProcessSpecificTablesOnly BIT = 0;
    DECLARE @SpecificTablesList TABLE (TableName NVARCHAR(128));

    -- Parse and populate specific tables list if provided
    IF @SpecificTables IS NOT NULL AND LTRIM(RTRIM(@SpecificTables)) <> ''
    BEGIN
        SET @ProcessSpecificTablesOnly = 1;
        
        -- Parse comma-separated table names
        DECLARE @TableName_Temp NVARCHAR(128),
                @StartPos INT = 1,
                @CommaPos INT;
        
        SET @SpecificTables = LTRIM(RTRIM(@SpecificTables)) + ','; -- Add trailing comma for parsing
        
        WHILE @StartPos <= LEN(@SpecificTables)
        BEGIN
            SET @CommaPos = CHARINDEX(',', @SpecificTables, @StartPos);
            
            IF @CommaPos > 0
            BEGIN
                SET @TableName_Temp = LTRIM(RTRIM(SUBSTRING(@SpecificTables, @StartPos, @CommaPos - @StartPos)));
                
                IF @TableName_Temp <> ''
                BEGIN
                    INSERT INTO @SpecificTablesList (TableName) VALUES (@TableName_Temp);
                END
                
                SET @StartPos = @CommaPos + 1;
            END
            ELSE
                BREAK;
        END
        
        -- Display which tables will be processed
        PRINT N'SPECIFIC TABLES MODE: Processing only the following tables:';
        SELECT TableName FROM @SpecificTablesList;
        PRINT REPLICATE('=', 60);
    END
    ELSE
    BEGIN
        PRINT N'ALL TABLES MODE: Processing all tables';
        PRINT REPLICATE('=', 60);
    END

    -- Normalize truncate/repopulate to cursor format
    SELECT @Truncate = CASE WHEN @Truncate = 1 THEN 2 ELSE NULL END,
           @Repopulate = CASE WHEN @Repopulate = 1 THEN 1 ELSE NULL END;

    -- Create OperationType cursor source
    IF OBJECT_ID('tempdb.dbo.#OperType', 'U') IS NOT NULL DROP TABLE #OperType;
    SELECT @Truncate AS OperType INTO #OperType UNION ALL SELECT @Repopulate;
    DELETE FROM #OperType WHERE OperType IS NULL;

    -- Clean up old cursor
    IF CURSOR_STATUS('global', 'oper_cursor') >= -1
    BEGIN
        CLOSE oper_cursor;
        DEALLOCATE oper_cursor;
    END

    -- Declare cursor for truncate and repopulate options
    DECLARE oper_cursor CURSOR FOR SELECT OperType FROM #OperType ORDER BY OperType DESC;

    OPEN oper_cursor;
    FETCH NEXT FROM oper_cursor INTO @OperationType;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @DisableReplication = 0;
        SET @IncludeAllSitesinIntranet = 0;

        DECLARE @AllTables TABLE (
            name SYSNAME PRIMARY KEY,
            AllRows INT NULL,
            BaseRows INT NULL,
            SelectedRow INT NULL,
            Message NVARCHAR(255) NULL
        );

        -- Loop DB list
        IF OBJECT_ID('tempdb.dbo.#loop', 'U') IS NOT NULL DROP TABLE #loop;
        CREATE TABLE #loop (
            id INT IDENTITY(1,1) PRIMARY KEY,
            dbname VARCHAR(255),
            sitename VARCHAR(8)
        );

        -- Build the dynamic SQL to get the list of databases from the site table
        SET @sqlvar = 
            'SELECT app_db_name, site FROM ' + QUOTENAME(@MasterDB) + '.dbo.site ' +
            'ORDER BY CASE WHEN app_db_name = ' + CHAR(39) + @MasterDB + CHAR(39) + ' THEN 1 ELSE 2 END';

        PRINT @sqlvar;

        INSERT INTO #loop (dbname, sitename)
        EXEC(@sqlvar);

        SELECT @RowCount = COUNT(*) FROM #loop;
        PRINT N'There are ' + CONVERT(VARCHAR(5), @RowCount) + ' databases for the loop.';
        PRINT REPLICATE('-', 50);

        SET @position = 1;

        WHILE @position <= @RowCount
        BEGIN
            DECLARE @StartTime DATETIME = GETDATE();

            SET @sitename = NULL;
            SET @dbname = NULL;

            SELECT @dbname = dbname, @sitename = sitename
            FROM #loop WHERE id = @position;

            -- Auto-fetch sitename if not provided
            IF @sitename = ''
            BEGIN
                SET @SQLString = N'USE ' + QUOTENAME(@dbname) + '; SELECT @sitenameOUT = site_ref FROM parms_mst;';
                SET @ParmDefinition = N'@sitenameOUT VARCHAR(8) OUTPUT';
                EXEC sp_executesql @SQLString, @ParmDefinition, @sitenameOUT = @sitename OUTPUT;
            END

            PRINT N'Position: ' + CONVERT(VARCHAR(5), @position);
            PRINT N'DB: ' + @dbname;
            PRINT N'Site: ' + @sitename;

            IF DB_ID(@dbname) IS NOT NULL
            BEGIN
                BEGIN TRY
                    SET @sqlvar = N'
                        USE ' + QUOTENAME(@dbname) + ';
                        EXEC SetSiteSP ' + @CHAR39 + @sitename + @CHAR39 + ', NULL;
                        EXEC ' + QUOTENAME(@dbname) + '.[dbo].[ListSiteAllTablesSp] @TableName = NULL;';

                    DELETE FROM @AllTables;
                    INSERT INTO @AllTables EXEC(@sqlvar);

                    IF CURSOR_STATUS('global', 'listSiteAllTablesCsr') >= -1
                    BEGIN
                        CLOSE listSiteAllTablesCsr;
                        DEALLOCATE listSiteAllTablesCsr;
                    END

                    -- Cursor now filters tables if specific tables are requested
                    DECLARE listSiteAllTablesCsr CURSOR FORWARD_ONLY FOR
                    SELECT name, AllRows, BaseRows, SelectedRow, Message 
                    FROM @AllTables
                    WHERE (@ProcessSpecificTablesOnly = 0 
                           OR name IN (SELECT TableName FROM @SpecificTablesList));

                    OPEN listSiteAllTablesCsr;

                    WHILE @Severity = 0
                    BEGIN
                        FETCH NEXT FROM listSiteAllTablesCsr INTO
                            @allTablename, @allTableAllRows, @allTableBaseRows, @allTableSelectedRow, @allTableMessage;

                        IF @@FETCH_STATUS <> 0 BREAK;

                        PRINT N'Table Name: ' + @allTablename + '_' + @sitename;

                        SET @listSiteAllTablesSql = N'
                            DECLARE @DisableReplication INT, @OperationType INT, @RowCount INT,
                                    @IncludeAllSitesinIntranet INT, @TableName SYSNAME, @Site VARCHAR(8);
                            EXEC ' + QUOTENAME(@dbname) + '.[dbo].[UpdateAllTablesSp]
                                @DisableReplication = 0,
                                @TableName = N''' + @allTablename + ''',
                                @Site = N''' + @sitename + ''',
                                @OperationType = ' + CAST(@OperationType AS NVARCHAR(10)) + ',
                                @RowCount = 0,
                                @IncludeAllSitesinIntranet = 0;';

                        EXEC(@listSiteAllTablesSql);
                    END

                    IF CURSOR_STATUS('global', 'listSiteAllTablesCsr') >= -1
                    BEGIN
                        CLOSE listSiteAllTablesCsr;
                        DEALLOCATE listSiteAllTablesCsr;
                    END
                END TRY
                BEGIN CATCH
                    PRINT N'An error occurred while processing DB: ' + @dbname;
                    SELECT ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage;
                END CATCH
            END

            DECLARE @EndTime DATETIME = GETDATE();
            PRINT 'Execution time for ' + @dbname + ': ' + CONVERT(VARCHAR, DATEDIFF(SECOND, @StartTime, @EndTime)) + ' seconds';

            SET @position += 1;
            PRINT 'End of loop for ' + @dbname;
        END

        IF OBJECT_ID('tempdb.dbo.#loop', 'U') IS NOT NULL DROP TABLE #loop;

        FETCH NEXT FROM oper_cursor INTO @OperationType;
    END

    IF CURSOR_STATUS('global', 'oper_cursor') >= -1
    BEGIN
        CLOSE oper_cursor;
        DEALLOCATE oper_cursor;
    END

    IF OBJECT_ID('tempdb.dbo.#OperType', 'U') IS NOT NULL DROP TABLE #OperType;

    SET NOCOUNT OFF;
END
GO

-- ========================================
-- Example Usage:
-- ========================================

/*
-- Process all tables with default settings (Production database)
EXEC [dbo].[IEMUpdateNonSyncedAllTables];

-- Process all tables with custom prefix (Development database)
EXEC [dbo].[IEMUpdateNonSyncedAllTables] 
    @Prefix = N'U',
    @Truncate = 1,
    @Repopulate = 1;

-- Process only specific tables
EXEC [dbo].[IEMUpdateNonSyncedAllTables] 
    @Prefix = N'',
    @SpecificTables = N'customers,orders,inventory',
    @Truncate = 1,
    @Repopulate = 1;

-- Process specific tables, truncate only (no repopulate)
EXEC [dbo].[IEMUpdateNonSyncedAllTables] 
    @Prefix = N'U',
    @SpecificTables = N'products,sales',
    @Truncate = 1,
    @Repopulate = 0;
*/