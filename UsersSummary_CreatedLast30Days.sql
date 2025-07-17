SELECT 
DATEPART(Year, CreateDate) AS YearCreated,
COUNT(*) AS NumberOfUsers
FROM Usernames 
WHERE DATEPART(MONTH, Createdate) = 1 AND DATEPART(Year, CreateDate) = 2025
GROUP BY DATEPART(YEAR, CreateDate)

SELECT 
DATEPART(Year, CreateDate) AS YearCreated,
COUNT(*) AS NumberOfUsers
FROM Usernames 
WHERE DATEPART(MONTH, Createdate) = 2 AND DATEPART(Year, CreateDate) = 2025
GROUP BY DATEPART(YEAR, CreateDate)

SELECT 
DATEPART(Year, CreateDate) AS YearCreated,
COUNT(*) AS NumberOfUsers
FROM Usernames 
WHERE DATEPART(MONTH, Createdate) = 3 AND DATEPART(Year, CreateDate) = 2025
GROUP BY DATEPART(YEAR, CreateDate)

SELECT 
DATEPART(Year, CreateDate) AS YearCreated,
COUNT(*) AS NumberOfUsers
FROM Usernames 
WHERE DATEPART(MONTH, Createdate) = 4 AND DATEPART(Year, CreateDate) = 2025
GROUP BY DATEPART(YEAR, CreateDate)

SELECT 
DATEPART(Year, CreateDate) AS YearCreated,
COUNT(*) AS NumberOfUsers
FROM Usernames 
WHERE DATEPART(MONTH, Createdate) = 5 AND DATEPART(Year, CreateDate) = 2025
GROUP BY DATEPART(YEAR, CreateDate)



SELECT *
FROM Usernames
WHERE CreateDate >= DATEADD(DAY, -30, GETDATE())

