USE FRE_App

SELECT DISTINCT LogDesc, COUNT(*) AS 'FormOpened'
FROM AuditLog
WHERE MessageType = 2 AND RecordDate > '2025-03-08'
GROUP BY LogDesc
ORDER BY COUNT(*) DESC

