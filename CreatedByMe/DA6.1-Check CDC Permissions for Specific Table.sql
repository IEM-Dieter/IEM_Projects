/*
================================================================================
              CDC Table Reader Permissions Check for Multiple Databases on A-P-INFORSQL-01
================================================================================

PURPOSE:        Check the status of CDC table reader permissions for a specific table.

AUTHOR:         Dieter Noesner  
COMPANY:        Industrial Electric Mfg.
CREATED:        2025-09-15
VERSION:        1.0

DESCRIPTION:    Simple, reliable CDC table reader permission check

PREREQUISITES:  - SQL Server 2008+ with CDC feature
                - sysadmin or db_owner permissions

================================================================================
*/

-- ** CONFIGURATION VARIABLES **
DECLARE @TableName NVARCHAR(100) = 'awsInvData'; -- ** CHANGE THIS TABLE NAME AS NEEDED **

-- Internal variables (do not modify)
DECLARE @DatabaseName NVARCHAR(100);
DECLARE @SQL NVARCHAR(MAX);

PRINT '********************************************************';
PRINT '*** CDC TABLE READER PERMISSIONS CHECK SCRIPT ***';
PRINT '********************************************************';
PRINT 'Checking cdc_table_reader SELECT permissions for table: ' + @TableName;
PRINT '';

-- List of databases to process -- Comment out iemCommon if needed
DECLARE @Databases TABLE (DatabaseName NVARCHAR(100));
INSERT INTO @Databases VALUES 
    --('FRE_App'),
    --('JAX_App'), 
    --('VAN_App'),
    --('PASS_App'),
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
    
    -- Check for specific cdc_table_reader SELECT permissions
    SET @SQL = 'USE [' + @DatabaseName + ']; ' +
               'SET NOCOUNT ON; ' +
               'DECLARE @TableExists BIT; ' +
               'DECLARE @CDCReaderExists BIT; ' +
               'DECLARE @CDCReaderHasSelect BIT; ' +
               'SELECT @TableExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
               'FROM sys.tables t ' +
               'INNER JOIN sys.schemas s ON t.schema_id = s.schema_id ' +
               'WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo''; ' +
               'SELECT @CDCReaderExists = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
               'FROM sys.database_principals ' +
               'WHERE name = ''cdc_table_reader'' AND type = ''R''; ' +
               'SELECT @CDCReaderHasSelect = CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END ' +
               'FROM sys.database_permissions p ' +
               'INNER JOIN sys.objects o ON p.major_id = o.object_id ' +
               'INNER JOIN sys.schemas s ON o.schema_id = s.schema_id ' +
               'INNER JOIN sys.database_principals pr ON p.grantee_principal_id = pr.principal_id ' +
               'WHERE o.name = ''' + @TableName + ''' AND s.name = ''dbo'' ' +
               'AND pr.name = ''cdc_table_reader'' AND p.permission_name = ''SELECT'' AND p.state_desc = ''GRANT''; ' +
               'IF @TableExists = 0 ' +
               'BEGIN ' +
               '    PRINT ''   ERROR: TABLE NOT FOUND - ' + @TableName + ' does not exist in ' + @DatabaseName + '''; ' +
               'END ' +
               'ELSE IF @CDCReaderExists = 0 ' +
               'BEGIN ' +
               '    PRINT ''   ERROR: ROLE NOT FOUND - cdc_table_reader role does not exist in ' + @DatabaseName + '''; ' +
               'END ' +
               'ELSE IF @CDCReaderHasSelect = 0 ' +
               'BEGIN ' +
               '    PRINT ''   WARNING: MISSING PERMISSION - cdc_table_reader does NOT have SELECT permission on ' + @TableName + ' in ' + @DatabaseName + '''; ' +
               'END ' +
               'ELSE ' +
               'BEGIN ' +
               '    PRINT ''   SUCCESS: PERMISSION GRANTED - cdc_table_reader has SELECT permission on ' + @TableName + ' in ' + @DatabaseName + '''; ' +
               'END; ' +
               'SELECT ' +
               '    ''' + @DatabaseName + ''' AS database_name, ' +
               '    ''' + @TableName + ''' AS table_name, ' +
               '    CASE WHEN @TableExists = 0 THEN ''TABLE NOT FOUND'' ' +
               '         WHEN @CDCReaderExists = 0 THEN ''CDC_READER ROLE NOT FOUND'' ' +
               '         WHEN @CDCReaderHasSelect = 0 THEN ''SELECT PERMISSION MISSING'' ' +
               '         ELSE ''SELECT PERMISSION GRANTED'' END AS permission_status, ' +
               '    CASE WHEN @CDCReaderExists = 1 THEN ''EXISTS'' ELSE ''NOT FOUND'' END AS cdc_reader_role_status, ' +
               '    CASE WHEN @CDCReaderHasSelect = 1 THEN ''GRANTED'' ELSE ''NOT GRANTED'' END AS select_permission_status;';
    
    EXEC sp_executesql @SQL;
    PRINT '';
    
    FETCH NEXT FROM db_cursor INTO @DatabaseName;
END;

CLOSE db_cursor;
DEALLOCATE db_cursor;

PRINT '================================================';
PRINT 'CDC READER PERMISSIONS CHECK completed for all databases.';
PRINT 'Table checked: ' + @TableName;
PRINT '================================================';

-- Detailed permissions verification
PRINT '';
PRINT 'DETAILED VERIFICATION: CDC Table Reader Permission Details';
PRINT '================================================';

DECLARE detail_cursor CURSOR FOR 
SELECT DatabaseName FROM @Databases;

OPEN detail_cursor;
FETCH NEXT FROM detail_cursor INTO @DatabaseName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Database: ' + @DatabaseName;
    PRINT '------------------------';
    
    SET @SQL = 'USE [' + @DatabaseName + ']; ' +
               'SET NOCOUNT ON; ' +
               'IF EXISTS (SELECT 1 FROM sys.tables t INNER JOIN sys.schemas s ON t.schema_id = s.schema_id WHERE t.name = ''' + @TableName + ''' AND s.name = ''dbo'') ' +
               'BEGIN ' +
               '    IF EXISTS (SELECT 1 FROM sys.database_principals WHERE name = ''cdc_table_reader'') ' +
               '    BEGIN ' +
               '        IF EXISTS ( ' +
               '            SELECT 1 FROM sys.database_permissions p ' +
               '            INNER JOIN sys.objects o ON p.major_id = o.object_id ' +
               '            INNER JOIN sys.schemas s ON o.schema_id = s.schema_id ' +
               '            INNER JOIN sys.database_principals pr ON p.grantee_principal_id = pr.principal_id ' +
               '            WHERE o.name = ''' + @TableName + ''' AND s.name = ''dbo'' ' +
               '            AND pr.name = ''cdc_table_reader'' AND p.permission_name = ''SELECT'' AND p.state_desc = ''GRANT'' ' +
               '        ) ' +
               '        BEGIN ' +
               '            SELECT ' +
               '                pr.name AS role_name, ' +
               '                p.permission_name, ' +
               '                p.state_desc AS permission_state, ' +
               '                ''SUCCESS: Permission correctly configured'' AS status ' +
               '            FROM sys.database_permissions p ' +
               '            INNER JOIN sys.objects o ON p.major_id = o.object_id ' +
               '            INNER JOIN sys.schemas s ON o.schema_id = s.schema_id ' +
               '            INNER JOIN sys.database_principals pr ON p.grantee_principal_id = pr.principal_id ' +
               '            WHERE o.name = ''' + @TableName + ''' AND s.name = ''dbo'' ' +
               '            AND pr.name = ''cdc_table_reader'' AND p.permission_name = ''SELECT''; ' +
               '        END ' +
               '        ELSE ' +
               '        BEGIN ' +
               '            SELECT ''cdc_table_reader'' AS role_name, ' +
               '                   ''SELECT'' AS permission_name, ' +
               '                   ''NOT GRANTED'' AS permission_state, ' +
               '                   ''ERROR: SELECT permission missing for cdc_table_reader'' AS status; ' +
               '        END ' +
               '    END ' +
               '    ELSE ' +
               '    BEGIN ' +
               '        SELECT ''cdc_table_reader'' AS role_name, ' +
               '               ''N/A'' AS permission_name, ' +
               '               ''N/A'' AS permission_state, ' +
               '               ''ERROR: cdc_table_reader role does not exist'' AS status; ' +
               '    END ' +
               'END ' +
               'ELSE ' +
               'BEGIN ' +
               '    SELECT ''N/A'' AS role_name, ' +
               '           ''N/A'' AS permission_name, ' +
               '           ''N/A'' AS permission_state, ' +
               '           ''ERROR: Table ' + @TableName + ' does not exist'' AS status; ' +
               'END;';
    
    EXEC sp_executesql @SQL;
    PRINT '';
    FETCH NEXT FROM detail_cursor INTO @DatabaseName;
END;

CLOSE detail_cursor;
DEALLOCATE detail_cursor;

PRINT '================================================';
PRINT 'DETAILED VERIFICATION completed.';
PRINT 'Summary: Check results above to identify any databases';
PRINT 'where cdc_table_reader role needs SELECT permission granted.';
PRINT '================================================';