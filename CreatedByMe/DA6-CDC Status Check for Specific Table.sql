/*
================================================================================
              CDC Status Check for Multiple Databases on A-P-INFORSQL-01
================================================================================

PURPOSE:        Check the status of CDC for a specific table.

AUTHOR:         Dieter Noesner  
COMPANY:        Industrial Electric Mfg.
CREATED:        2025-09-15
VERSION:        1.0

DESCRIPTION:    Simple, reliable CDC status check

PREREQUISITES:  - SQL Server 2008+ with CDC feature
                - sysadmin or db_owner permissions

================================================================================
*/

-- Script 1: CDC Status Check for Multiple Databases
-- ** CONFIGURATION VARIABLES **
DECLARE @TableName NVARCHAR(100) = '_IEM_OrderFormCNLog_mst'; -- ** CHANGE THIS TABLE NAME AS NEEDED **

-- Internal variables (do not modify)
DECLARE @DatabaseName NVARCHAR(100);
DECLARE @SQL NVARCHAR(MAX);

PRINT '********************************************************';
PRINT '*** CDC STATUS CHECK SCRIPT ***';
PRINT '********************************************************';
PRINT 'Checking CDC status for table: ' + @TableName;
PRINT '';

-- List of databases to process -- Comment out iemCommon if needed
DECLARE @Databases TABLE (DatabaseName NVARCHAR(100));
INSERT INTO @Databases VALUES 
    ('FRE_App'),
    ('JAX_App'), 
    ('VAN_App'),
    ('PASS_App'),
	('iemCommon');

-- Cursor to loop through databases
DECLARE db_cursor CURSOR FOR 
SELECT DatabaseName FROM @Databases;

OPEN db_cursor;
FETCH NEXT FROM db_cursor INTO @DatabaseName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '================================================';
    PRINT 'Checking database: ' + @DatabaseName;
    PRINT '================================================';
    
    -- Check if CDC is already enabled for the table
    SET @SQL = 'USE [' + @DatabaseName + ']; ' +
               'SET NOCOUNT ON; ' +
               'DECLARE @CDCEnabled BIT; ' +
               'DECLARE @TableExists BIT; ' +
               'SELECT @TableExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
               'FROM sys.tables t ' +
               'INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
               'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo''; ' +
               'SELECT @CDCEnabled = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
               'FROM sys.tables t ' +
               'INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
               'LEFT JOIN cdc.change_tables ct ON t.object_id = ct.source_object_id ' +
               'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo'' AND t.is_tracked_by_cdc = 1; ' +
               'IF @TableExists = 0 ' +
               '    PRINT ''   ERROR: TABLE NOT FOUND - ' + @TableName + ' does not exist in ' + @DatabaseName + '''; ' +
               'ELSE IF @CDCEnabled = 1 ' +
               '    PRINT ''   SUCCESS: CDC ALREADY ENABLED - ' + @TableName + ' in ' + @DatabaseName + '''; ' +
               'ELSE ' +
               '    PRINT ''   WARNING: CDC NOT ENABLED - ' + @TableName + ' in ' + @DatabaseName + '''; ' +
               'SELECT ' +
               '    ''' + @DatabaseName + ''' AS database_name, ' +
               '    s.name AS schema_name, ' +
               '    t.name AS table_name, ' +
               '    CASE WHEN t.is_tracked_by_cdc = 1 THEN ''ENABLED'' ELSE ''DISABLED'' END AS cdc_status, ' +
               '    ct.capture_instance, ' +
               '    ct.start_lsn, ' +
               '    ct.create_date ' +
               'FROM sys.tables t ' +
               '    INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
               '    LEFT JOIN cdc.change_tables ct ON t.object_id = ct.source_object_id ' +
               'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo'';';
    
    EXEC sp_executesql @SQL;
    PRINT '';
    
    FETCH NEXT FROM db_cursor INTO @DatabaseName;
END;

CLOSE db_cursor;
DEALLOCATE db_cursor;

PRINT '================================================';
PRINT 'CDC STATUS CHECK completed for all databases.';
PRINT 'Table checked: ' + @TableName;
PRINT '================================================';