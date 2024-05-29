-- lab - 9

-- 1)
SELECT CAST('1234' AS FLOAT) AS number;

-- 2)
SELECT CAST(10.58 AS INT);

-- 3)
SELECT GETDATE() AS CurrentDate;

-- 4)
SELECT FORMAT(P_ADMITDATETIME, 'MM-dd-yyyy') AS Date_Time
FROM Bill_Detail;

-- 5)
SELECT FORMAT(P_DISCHARGEDATETIME, 'MM/dd/yyyy hh:mm:ss tt') AS Date_Time
FROM Bill_Detail;

-- 6)
SELECT B_ID, FORMAT(P_ADMITDATETIME, 'dd MMM yyyy hh:mm:ss tt') AS Date_Time
FROM Bill_Detail;

-- 7)
SELECT DATEDIFF(MONTH, '2023-08-20', '2024-06-11') AS Month_Count;

-- 8)
SELECT DATEDIFF(DAY, '2023-05-22', '2023-05-31') AS Days_Count;

-- 9)
SELECT DATEDIFF(DAY, P_ADMITDATETIME, P_DISCHARGEDATETIME) AS Days_Count 
FROM Bill_Detail;

-- 10)
SELECT DATEADD(MONTH, 10, GETDATE()) AS date_time;

-- 11)
SELECT DATEADD(DAY, 5, GETDATE()) AS date_time;

-- 12)
SELECT DATEADD(YEAR, 3, GETDATE()) AS date_time;

-- 13)
SELECT DATEDIFF(YEAR, '2004-08-12', GETDATE()) AS Current_Age;

-- 14)
SELECT P_FIRSTNAME, P_LASTNAME 
FROM Patient_Detail
WHERE P_AGE > 30;




--lab - 10

-- 1)
SELECT D_ID, LEN(D_ID) AS length_DID,
       D_Name, LEN(D_Name) AS length_DName,
       D_Address, LEN(D_Address) AS length_DAddress
FROM Doctor_Detail;

-- 2)
SELECT H_Name, LEN(H_Name) AS length_HName,
       H_Type, LEN(H_Type) AS length_HType,
       H_City, LEN(H_City) AS length_HCity
FROM Hospital_Detail;

-- 3)
SELECT UPPER(D_Name) AS Upper_DName,
       LOWER(D_Designation) AS Lower_DDesignation
FROM Doctor_Detail;

-- 4)
SELECT P_ContactNo, LEFT(P_ContactNo, 5) AS 'First 5 digit'
FROM Patient_Detail;

-- 5)
SELECT H_City, RIGHT(H_City, 3)
FROM Hospital_Detail;

-- 6)
SELECT SUBSTRING('Diploma Computer, DIETDS', 9, 8) AS Exe;

-- 7)
SELECT SUBSTRING('Darshan University, Rajkot', 21, 6) AS Exe;

-- 8)
SELECT REPLACE('Darshan College', 'College', 'University') AS Exe;

-- 9)
SELECT H_Name, H_Type,
       REPLACE(H_Type, 'Govt.', 'Government') AS Replaced_H_Type
FROM Hospital_Detail;

-- 10)
SELECT H_Name, H_Address, LEFT(H_Address, CHARINDEX(',', H_Address) - 1) 
FROM Hospital_Detail;

-- 11)
SELECT P_Address, REVERSE(P_Address) 
FROM Patient_Detail;

-- 12)
SELECT D_Name, D_Address, RIGHT(D_Address, CHARINDEX(',', REVERSE(D_Address)) - 2)
FROM Doctor_Detail;
