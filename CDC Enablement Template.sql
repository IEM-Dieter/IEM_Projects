-- These are the basic queries that you will need to Enable, Disable, and check the status of CDC enablement for inndividual tables. When multiple tables are requested, I would recommend copying and pasting this and doing all the tables at once. Then I usually save a copy with the date so that I can reference the changes that were made in case something comes up.

-- Specify the database that the table is in.
Use VAN_App
go


DECLARE @source_name VARCHAR(50);

-- Change this source name variable to match the name of the table to which you want to make CDC changes.
SET @source_name = 'JOBROUTE_mst';
DECLARE @capture_instance VARCHAR(50);
SET @capture_instance = ('dbo_' + @source_name);

-- This section will return a 1 or a 0 to indicate whether CDC has previously been enabled. This and the later section with the same fuction are here for diagnostic purposes. 
SELECT name, is_tracked_by_cdc
FROM sys.tables
WHERE name = @source_name;

 --This section disables data capture. Comment this out if you are enabling CDC for the first time but leave it uncommented if you are trying to get the system to pick up newly added columns on an already enabled table.
EXEC sys.sp_cdc_disable_table 
    @source_schema = N'dbo', 
    @source_name = @source_name, 
    @capture_instance = @capture_instance;

-- Checking status again.
SELECT name, is_tracked_by_cdc
FROM sys.tables
WHERE name = @source_name;

-- Enables CDC on the table specified above
EXEC sys.sp_cdc_enable_table
	@source_schema = 'dbo',
	@source_name = @source_name,
	@role_name = NULL,
	@supports_net_changes = 1;

-- One final status check to make sure that everything happened as planned.
SELECT name, is_tracked_by_cdc
FROM sys.tables
WHERE name = @source_name;