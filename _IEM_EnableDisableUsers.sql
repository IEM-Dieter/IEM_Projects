--Use FRE_App
--Use BAT_App

DECLARE @ExemptUserList TABLE(username varchar(MAX))
DECLARE @RunType INT

/*--------------------------------------------------------------------------------------------*
                            IEM Custom Code Change Log								    		
  File: _IEM_EnableDisableUsers
  Description: Edit the @RunType Parameter to Enable or Lockout users from Syteline.

  Change Log:
  Date        Ref #   Author        Description\Comments
  ---------  ------  -----------   -------------------------------------------------------------
  10/11/2024  0001   BAS            Initial Script Creation

\*--------------------------------------------------------------------------------------------*/


-- Begin Settting Paramaters Here

-- Set Run Report Type to Enable or Lockout Syteline Users
SET @RunType = '2' -- 1 = Enable Users, 2 = Lockout Users

-- Add Syteline user accounts here you wish to exclude from being disabled at any time
INSERT INTO @ExemptUserList
    VALUES 
    ('SL_Internal'),
    ('service'),
    ('sa'),
    ('infor.system'),
    ('FTAutomation'),
    ('nutech.viewpoint')
-- End Settting Paramaters


------ DO NOT EDIT ANY CODE BELOW

IF OBJECT_ID('tempdb..#UsersToEditStatus') IS NOT NULL DROP TABLE #UsersToEditStatus

SELECT username, Status = CASE WHEN ([Status]) = '0' THEN 'Enabled' WHEN ([Status]) = 1 THEN 'Locked Out' WHEN ([Status]) = '2' THEN 'Disabled' END
INTO #UsersToEditStatus
FROM UserNames un
WHERE un.username NOT IN (SELECT username FROM @ExemptUserList) AND SuperUserFlag !='1' AND Status = CASE WHEN (@RunType) = '1' THEN '1' WHEN (@RunType) = '2' THEN '0' END

--Update user record status
UPDATE UserNames
SET Status = CASE WHEN(@RunType = '1') THEN '0' WHEN (@RunType = '2') THEN '1' END
WHERE username NOT IN (SELECT username FROM @ExemptUserList) AND SuperUserFlag !='1' AND Status = CASE WHEN (@RunType) = '1' THEN '1' WHEN (@RunType) = '2' THEN '0' END

-- Display All Users Status after run
SELECT Username, Status = CASE WHEN ([Status]) = '0' THEN 'Enabled' WHEN ([Status]) = 1 THEN 'Locked Out' WHEN ([Status]) = '2' THEN 'Disabled' END
FROM UserNames
WHERE [Status] != '2'
-- select * from #usersToEditStatus