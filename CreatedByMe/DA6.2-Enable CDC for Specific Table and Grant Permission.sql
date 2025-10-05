/*
================================================================================
              Enable CDC and Grant Permissions for Multiple Databases on A-P-INFORSQL-01
================================================================================

PURPOSE:        Enable CDC and Grant Permissions for Multiple Databases

AUTHOR:         Dieter Noesner  
COMPANY:        Industrial Electric Mfg.
CREATED:        2025-09-15
VERSION:        1.0

DESCRIPTION:    Enable CDC for a specific table and grant permissions

PREREQUISITES:  - SQL Server 2008+ with CDC feature
                - sysadmin or db_owner permissions

================================================================================
*/

-- ** CONFIGURATION VARIABLES **
DECLARE @TableName NVARCHAR(100) = '_IEM_OrderFormCNLog_mst'; -- ** CHANGE THIS TABLE NAME AS NEEDED **
DECLARE @ExecuteMode BIT = 0; -- ** 0 = ROLLBACK (Preview Only), 1 = COMMIT (Execute Changes) **

-- Internal variables (do not modify)
DECLARE @DatabaseName NVARCHAR(100);
DECLARE @SQL NVARCHAR(MAX);
DECLARE @CaptureInstance NVARCHAR(200);

-- Display execution mode
IF @ExecuteMode = 0
BEGIN
    PRINT '********************************************************';
    PRINT '*** PREVIEW MODE - NO CHANGES WILL BE MADE ***';
    PRINT '*** Set @ExecuteMode = 1 to actually execute changes ***';
    PRINT '********************************************************';
    PRINT '';
END
ELSE
BEGIN
    PRINT '********************************************************';
    PRINT '*** EXECUTION MODE - CHANGES WILL BE COMMITTED ***';
    PRINT '********************************************************';
    PRINT '';
END

PRINT 'CDC ENABLE SCRIPT for table: ' + @TableName;
PRINT '';

-- List of databases to process -- Comment out iemCommon if needed
DECLARE @Databases TABLE (DatabaseName NVARCHAR(100));
INSERT INTO @Databases VALUES 
    ('FRE_App'),
    ('JAX_App'), 
    ('VAN_App'),
    ('PASS_App');
	--('iemCommon')
-- Cursor to loop through databases
DECLARE db_cursor CURSOR FOR 
SELECT DatabaseName FROM @Databases;

OPEN db_cursor;
FETCH NEXT FROM db_cursor INTO @DatabaseName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT '================================================';
    PRINT 'Processing database: ' + @DatabaseName;
    PRINT '================================================';
    
    -- STEP 2: Enable CDC on the table (if not already enabled)
    PRINT 'STEP 2: Enable CDC on table: ' + @TableName;
    
    -- Create capture instance name (replacing special characters with underscores)
    SET @CaptureInstance = 'dbo_' + REPLACE(REPLACE(@TableName, '_', '_'), '-', '_');
    
    IF @ExecuteMode = 0
    BEGIN
        PRINT '   PREVIEW: Would execute sys.sp_cdc_enable_table for ' + @TableName + ' in ' + @DatabaseName;
        PRINT '       Parameters:';
        PRINT '         @source_schema = ''dbo''';
        PRINT '         @source_name = ''' + @TableName + '''';
        PRINT '         @capture_instance = ''' + @CaptureInstance + '''';
        PRINT '         @supports_net_changes = 0';
        PRINT '         @role_name = NULL';
    END
    ELSE
    BEGIN
        SET @SQL = 'USE [' + @DatabaseName + ']; ' +
                   'DECLARE @TableExists BIT; ' +
                   'DECLARE @CDCEnabled BIT; ' +
                   'SELECT @TableExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
                   'FROM sys.tables t ' +
                   'INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
                   'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo''; ' +
                   'SELECT @CDCEnabled = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
                   'FROM sys.tables t ' +
                   'WHERE t.name = ''' + @TableName + ''' AND t.is_tracked_by_cdc = 1; ' +
                   'IF @TableExists = 0 ' +
                   'BEGIN ' +
                   '    PRINT ''   SKIPPED: Table ' + @TableName + ' does not exist in ' + @DatabaseName + '''; ' +
                   'END ' +
                   'ELSE IF @CDCEnabled = 1 ' +
                   'BEGIN ' +
                   '    PRINT ''   SKIPPED: CDC already enabled for ' + @TableName + ' in ' + @DatabaseName + '''; ' +
                   'END ' +
                   'ELSE ' +
                   'BEGIN ' +
                   '    BEGIN TRY ' +
                   '        EXEC sys.sp_cdc_enable_table ' +
                   '            @source_schema = N''dbo'', ' +
                   '            @source_name = N''' + @TableName + ''', ' +
                   '            @capture_instance = N''' + @CaptureInstance + ''', ' +
                   '            @supports_net_changes = 0, ' +
                   '            @role_name = NULL, ' +
                   '            @index_name = NULL, ' +
                   '            @filegroup_name = NULL; ' +
                   '        PRINT ''   SUCCESS: CDC enabled for ' + @TableName + ' in ' + @DatabaseName + '''; ' +
                   '    END TRY ' +
                   '    BEGIN CATCH ' +
                   '        PRINT ''   ERROR: Failed to enable CDC for ' + @TableName + ' in ' + @DatabaseName + ': '' + ERROR_MESSAGE(); ' +
                   '    END CATCH; ' +
                   'END;';
        
        EXEC sp_executesql @SQL;
    END
    
    -- STEP 3: Grant permissions to cdc_table_reader role
    PRINT 'STEP 3: Grant SELECT permissions to cdc_table_reader role';
    
    IF @ExecuteMode = 0
    BEGIN
        PRINT '   PREVIEW: Would execute GRANT SELECT ON [dbo].[' + @TableName + '] TO [cdc_table_reader] in ' + @DatabaseName;
    END
    ELSE
    BEGIN
        SET @SQL = 'USE [' + @DatabaseName + ']; ' +
                   'DECLARE @TableExists BIT; ' +
                   'SELECT @TableExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
                   'FROM sys.tables t ' +
                   'INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
                   'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo''; ' +
                   'IF @TableExists = 0 ' +
                   'BEGIN ' +
                   '    PRINT ''   SKIPPED: Table ' + @TableName + ' does not exist in ' + @DatabaseName + '''; ' +
                   'END ' +
                   'ELSE ' +
                   'BEGIN ' +
                   '    BEGIN TRY ' +
                   '        GRANT SELECT ON [dbo].[' + @TableName + '] TO [cdc_table_reader]; ' +
                   '        PRINT ''   SUCCESS: Permissions granted for ' + @TableName + ' in ' + @DatabaseName + '''; ' +
                   '    END TRY ' +
                   '    BEGIN CATCH ' +
                   '        PRINT ''   ERROR: Failed to grant permissions for ' + @TableName + ' in ' + @DatabaseName + ': '' + ERROR_MESSAGE(); ' +
                   '    END CATCH; ' +
                   'END;';
        
        EXEC sp_executesql @SQL;
    END
    
    PRINT '';
    FETCH NEXT FROM db_cursor INTO @DatabaseName;
END;

CLOSE db_cursor;
DEALLOCATE db_cursor;

PRINT '================================================';
IF @ExecuteMode = 0
    PRINT 'PREVIEW completed for all databases.';
ELSE
    PRINT 'EXECUTION completed for all databases.';
PRINT 'Table processed: ' + @TableName;
PRINT '================================================';

-- Final verification query across all databases
PRINT 'FINAL STATUS: CDC status across all databases for table: ' + @TableName;
PRINT '================================================';

DECLARE verify_cursor CURSOR FOR 
SELECT DatabaseName FROM @Databases;

OPEN verify_cursor;
FETCH NEXT FROM verify_cursor INTO @DatabaseName;

WHILE @@FETCH_STATUS = 0
BEGIN
    SET @SQL = 'USE [' + @DatabaseName + ']; ' +
               'SET NOCOUNT ON; ' +
               'IF EXISTS (SELECT 1 FROM sys.tables t INNER JOIN sys.schemas s ON t.schema_id = s.schema_id WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo'') ' +
               'BEGIN ' +
               '    SELECT ' +
               '        ''' + @DatabaseName + ''' AS database_name, ' +
               '        s.name AS schema_name, ' +
               '        t.name AS table_name, ' +
               '        CASE WHEN t.is_tracked_by_cdc = 1 THEN ''ENABLED'' ELSE ''DISABLED'' END AS cdc_status, ' +
               '        ct.capture_instance, ' +
               '        ct.create_date ' +
               '    FROM sys.tables t ' +
               '        INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
               '        LEFT JOIN cdc.change_tables ct ON t.object_id = ct.source_object_id ' +
               '    WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo''; ' +
               'END ' +
               'ELSE ' +
               'BEGIN ' +
               '    SELECT ''' + @DatabaseName + ''' AS database_name, ''dbo'' AS schema_name, ''' + @TableName + ''' AS table_name, ''TABLE NOT FOUND'' AS cdc_status, NULL AS capture_instance, NULL AS create_date; ' +
               'END;';
    
    EXEC sp_executesql @SQL;
    FETCH NEXT FROM verify_cursor INTO @DatabaseName;
END;

CLOSE verify_cursor;
DEALLOCATE verify_cursor;

-- Final reminder about execution mode
PRINT '';
IF @ExecuteMode = 0
BEGIN
    PRINT '********************************************************';
    PRINT '*** REMINDER: This was PREVIEW MODE only ***';
    PRINT '*** No actual changes were made to any database ***';
    PRINT '*** Set @ExecuteMode = 1 to execute the changes ***';
    PRINT '********************************************************';
END
ELSE
BEGIN
    PRINT '********************************************************';
    PRINT '*** EXECUTION COMPLETED ***';
    PRINT '*** Changes have been committed to the databases ***';
    PRINT '********************************************************';
END