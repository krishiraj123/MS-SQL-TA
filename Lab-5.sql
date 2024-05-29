-- 1. Find the total number of doctors from Doctor_Detail.
SELECT COUNT(*) AS TotalDoctors
FROM Doctor_Detail;

-- 2. Count the patient's disease from Patient_Detail.
SELECT P_Disease, COUNT(*) AS DiseaseCount
FROM Patient_Detail
GROUP BY P_Disease;

-- 3. Count the patient disease remarks from Patient_Detail.
SELECT P_DiseaseRemarks, COUNT(*) AS DiseaseRemarksCount
FROM Patient_Detail
GROUP BY P_DiseaseRemarks;

-- 4. Find the sum of all pending amounts from Bill_Detail.
SELECT SUM(B_PendingAmount) AS TotalPendingAmount
FROM Bill_Detail;

-- 5. Find the average of room charges from Room_Detail.
SELECT AVG(R_Charges) AS AverageRoomCharges
FROM Room_Detail;

-- 6. Display max salary, min salary, and average salary from Doctor_Detail.
SELECT MAX(D_Salary) AS MaxSalary,
       MIN(D_Salary) AS MinSalary,
       AVG(D_Salary) AS AverageSalary
FROM Doctor_Detail;
