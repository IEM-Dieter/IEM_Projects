-- ========================================
-- Update Multi-Site Group for Controllers 
-- ========================================

-- ========================================
-- Step 1. - Run Select Statement to Cross Reference User List with User ID's
-- ========================================

SELECT Usernames.UserId, Usernames.Username, user_local_mst.whse, user_local_mst.inv_site_group FROM Usernames
JOIN user_local_mst
ON Usernames.UserId = user_local_mst.UserId
WHERE Usernames.UserId IN ('11308', '11483', '24', '11273', '264', '10775', '35', '10987', '11044', '11279', '11106', '27') AND inv_site_group IS NOT NULL;

-- ========================================
-- Step 2. - Run Update Statement to Update MS Group for User ID's
-- ========================================

UPDATE user_local_mst
SET inv_site_group = 'ALL'
WHERE user_local_mst.userId IN ('11308', '11483', '24', '11273', '264', '10775', '35', '10987', '11044', '11279', '11106', '27') AND inv_site_group IS NOT NULL;
