create database Hospital_System

--Table 1 Hospital Details

create table Hospital_Detail(
	H_ID int,
	H_Name varchar(50),
	H_ContactNo varchar(50),
	H_Address varchar(100),
	H_City varchar(50),
	H_Type varchar(50),
	H_Fire_Saftey int,
	H_Canteen_Facility Int
)

--Table 2 Room Detail

create table Room_Detail(
	R_ID int,
	R_Number int,
	R_Availability varchar(50),
	R_Type varchar(50),
	R_Charge float
)

--Table 3 Doctor Detail

create table Doctor_Detail( 
	D_ID int,
	D_Name varchar(50),
	D_Designation varchar(50),
	D_Gender varchar(50),
	D_Salary Varchar(50),
	D_EmailID varchar(50),
	D_ContactNo varchar(50),
	D_Address varchar(100),
	D_City varchar(50),
	H_ID int,
)

--Table 4 Appointment Detail

create table Appointment_Detail(
	A_ID int,
	A_Number int,
	A_Date dateTime,
	A_Time time,
	D_ID int,
	H_ID Int,
)

--Table 5 Patient Detail

create table Patient_Detail(
	P_ID int,
	P_FirstName varchar(50),
	P_MiddleName varchar(50),
	P_LastName varchar(50),
	P_ContactNo varchar(50),
	P_Age int,
	P_Weight float,
	P_Address varchar(100),
	P_City varchar(50),
	P_Gender varchar(50),
	P_Disease varchar(100),
	P_Disease_Remarks varchar(100),
	P_Guardian_ContactNo varchar(50),
	A_ID int,
	R_ID Int,
	D_ID Int,
	H_ID Int
)

--Table 6 Bill Detail

create table Bill_Detail(
	B_ID int,
	P_ID Int,
	R_ID Int,
	H_ID Int,
	P_AdmitDateTime dateTime,
	P_DischargeDateTime dateTime,
	P_Medicine_Charge float,
	P_TotalDays_Charge float,
	P_Doctor_Charge float,
	P_Total_Amount float,
	P_Pending_Amount float 
)

--Table 7 Transaction Detail

create table Transaction_Detail(
	Tr_ID int,
	Tr_Amount_ID varchar(50),
	Tr_B_Amount float,
	Tr_DateTime dateTime,
	Tr_Type varchar(50),
	B_ID int,
	P_ID int,
	H_ID Int
)




--Lab-3 

--Inserting Data into Hospital_Detail table
INSERT INTO Hospital_Detail (H_ID, H_Name, H_ContactNo, H_Address, H_City, H_Type, H_Fire_Saftey, H_Canteen_Facility)
VALUES (101, 'Samarpan Hospital', '7895420548', 'Rajkot-Morbi HighWay, Rajkot','Rajkot','Private', 1, 1);

INSERT INTO Hospital_Detail (H_ID, H_Name, H_ContactNo, H_Address, H_City, H_Type, H_Fire_Saftey, H_Canteen_Facility)
VALUES (102, 'Nakshatra Hospital', '9856247130', 'Jam Tower Road, Jamnagar', 'Jamnagar', 'Private', 0, 1);

INSERT INTO Hospital_Detail (H_ID, H_Name, H_ContactNo, H_Address, H_City, H_Type, H_Fire_Saftey, H_Canteen_Facility)
VALUES (103, 'Civil Hospital', '7695302145', 'Limda Chowk, Morbi2', 'Morbi', 'Govt.', 1, 0);

INSERT INTO Hospital_Detail (H_ID, H_Name, H_ContactNo, H_Address, H_City, H_Type, H_Fire_Saftey, H_Canteen_Facility)
VALUES (104, 'Amity Multispecialist Hospital', '9012345678', 'Ravapar Road, Morbi', 'Morbi', 'Private', 0, 0);

INSERT INTO Hospital_Detail (H_ID, H_Name, H_ContactNo, H_Address, H_City, H_Type, H_Fire_Saftey, H_Canteen_Facility)
VALUES (105, 'General Hospital', '7215698430', 'Rajkot-Jamnagar Highway, Rajkot', 'Rajkot', 'Govt.', 1, 1);



-- Inserting data into Room_Detail table
INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2001, 201, 'Yes', 'AC', 2000);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2002, 201, 'No', 'Non-AC', 1500);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2003, 501, 'Yes', 'ICU', 4500);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2004, 302, 'No', 'ICU', 3000);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2005, 505, 'Yes', 'General', 1500);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2006, 307, 'Yes', 'ICU', 4500);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2007, 205, 'No', 'AC', 2500);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2008, 211, 'Yes', 'Non-AC', 2000);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2009, 406, 'No', 'Non-AC', 1200);

INSERT INTO Room_Detail (R_ID, R_Number, R_Availability, R_Type, R_Charge) VALUES (2010, 801, 'Yes', 'General', 500);



-- Inserting data into Doctor_Detail table
INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3001, 'Mayur', 'Ortho', 'M', '72000', 'mayur@gmail.com', '9045781540', 'Kothariya road, Block 11 Rajkot', 'Rajkot', 102);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3002, 'Krishna', 'Dentist', 'F', '50000', 'krishna@gmail.com', '9012345679', 'Ravapar road, Block 701 Morbi', 'Morbi', 101);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3003, 'Ekta', 'MD', 'F', '45300', 'ekta@gov.in', '6012345787', '150 ft ring road, Block 301 Rajkot', 'Rajkot', 103);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3004, 'Nikhil', 'Neurologist', 'M', '32500', 'nikhil@gov.in', '8102365479', 'Sanala road, Block 501 Morbi', 'Morbi', 103);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3005, 'Shrey', 'Cardiologist', 'M', '180000', 'shrey@gmail.com', '9154786230', 'Bhaktinagar street 3, Block 251 Jamnagar', 'Jamnagar', 104);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3006, 'Rahul', 'Surgeon', 'M', '70800', 'rahul@gov.in', '4487552201', 'Near KKV Hall, Block A-101 Bhavnagar', 'Bhavnagar', 105);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3007, 'Shyam', 'MD', 'M', '50000', 'shyam@yahoo.in', '6524879560', 'Housing Same Kanthe, Block 100 Morbi', 'Morbi', 102);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3008, 'Mukesh', 'Dentist', 'M', '62000', 'mukesh@gmail.com', '7784562139', 'Near ST Street 2, Block 203 Jamnagar', 'Jamnagar', 104);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3009, 'Anil', 'Ortho', 'M', '55000', 'anil@yahoo.in', '8765123490', 'Lal Darwaja, Block 555 Rajkot', 'Rajkot', 101);

INSERT INTO Doctor_Detail (D_ID, D_Name, D_Designation, D_Gender, D_Salary, D_EmailID, D_ContactNo, D_Address, D_City, H_ID)
VALUES (3010, 'Milan', 'MD', 'M', '45500', 'milan@gov.in', '9874563210', 'Near Green garden, Block 350 Rajkot', 'Rajkot', 105);


-- Inserting data into Appointment_Detail table
INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4001, 100, '2023-12-10', '12:25:50', 3002, 101);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4002, 40, '2023-11-15', '17:02:10', 3001, 102);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4003, 200, '2024-01-11', '16:30:30', 3005, 104);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4004, 120, '2023-12-23', '10:30:45', 3004, 103);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4005, 45, '2024-02-03', '09:45:00', 3003, 103);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4006, 30, '2023-04-20', '12:30:45', 3007, 102);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4007, 120, '2022-08-04', '10:35:20', 3009, 101);

INSERT INTO Appointment_Detail (A_ID, A_Number, A_Date, A_Time, D_ID, H_ID)
VALUES (4008, 100, '2024-02-03', '16:45:00', 3002, 101);


-- Inserting data into Patient_Detail table
INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5001, 'Khushbu', 'G', 'Patel', '9043781540', 38, 55.25, 'Chokidhani road', 'Rajkot', 'G', 'Shoulder Pain', 'Ice Therapy', '9043468140', 4002, 2005, 3007, 102);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5002, 'Amit', 'R', 'Parmar', '9022345679', 45, 62.30, 'Bhaktinagar bypass', 'Surat', 'M', 'Brain Tumor', 'Brain Surgery', '9022344679', 4001, 2001, 3009, 101);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5003, 'Priti', 'A', 'Ambani', '2012365787', 7, 56.23, 'Hill station road', 'Surat', 'G', 'Brain Tumor', 'Brain Surgery', NULL, 2002, 3004, 103);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5004, 'Payal', 'S', 'Vora', '8302325477', 36, 90.50, 'Near madhapar chowk', 'Ahmedabad', 'M', 'Knee joint', 'Ice Therapy', '8302225477', 4005, 2004, 3003, 103);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5005, 'Nikhil', 'D', 'Patel', '9125476230', 72, 60.00, 'Gokul krishn hospital road', 'Jamnagar', 'M', 'Tooth Break', NULL, '9995476230', 4004, 2001, 3002, 101);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5006, 'Bhavya', 'A', 'Jani', '4480552201', 22, 45.28, 'SP road', 'Ahmedabad', 'M', 'Back Pain', 'Do Exercise', NULL, 2001, 3009, 101);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5007, 'Het', 'J', 'Varotariya', '3562479560', 18, 50.67, 'Meera road', 'Morbi', 'M', 'Heart Attack', 'Need Heart Surgery', '3562789560', 4006, 2006, 3005, 104);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5008, 'Jay', 'T', 'Patel', '7284562019', 69, 62.15, 'Chandani chowk', 'Morbi', 'M', 'Migraine', NULL, NULL, 2010, 3002, 101);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5009, 'Mehul', 'M', 'Joshi', '7765124490', 20, 50.00, 'Taj road', 'Ahmedabad', 'M', 'Tooth Break', 'Extraction', '7765554490', 4003, 2003, 3008, 104);

INSERT INTO Patient_Detail (P_ID, P_FirstName, P_MiddleName, P_LastName, P_ContactNo, P_Age, P_Weight, P_Address, P_City, P_Gender, P_Disease, P_Disease_Remarks, P_Guardian_ContactNo, A_ID, R_ID, D_ID, H_ID)
VALUES (5010, 'Priya', 'H', 'Parmar', '2597891999', 49, 76.25, 'Alap villa', 'Morbi', 'G', 'Migraine', 'Improve sleep habit', '9090891999', 4007, 2002, 3004, 103);


-- Inserting data into Bill_Detail table
INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6001, 5001, 2005, 102, '2023-12-10 12:25:50', '2023-12-11 12:25:50', 3255.25, 1500, 500.25, 5255.5, 2500);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6002, 5002, 2001, 101, '2023-11-17 17:02:10', '2023-11-20 17:02:10', 5600, 6000, 1050, 12650, 1000);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6003, 5003, 2002, 103, '2024-01-15 17:30:30', '2024-01-25 17:30:30', 100.56, 15000, 820, 15920.56, 0);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6004, 5004, 2004, 103, '2022-01-10 11:11:00', '2022-01-16 11:11:00', 1005.2, 18000, 720.56, 19725.76, 2500.25);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6005, 5005, 2001, 101, '2023-12-25 11:30:45', '2023-12-30 11:30:45', 754, 10000, 1500, 12254, 4000.6);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6006, 5006, 2001, 101, '2021-02-22 14:15:20', '2021-02-24 14:15:20', 4570, 13500, 600.35, 18670.35, 6000);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6007, 5007, 2006, 104, '2024-02-07 10:45:00', '2024-02-10 10:45:00', 1600.45, 3000, 250, 4850.45, 1500.71);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6008, 5008, 2010, 101, '2023-04-21 13:30:20', '2023-04-27 13:30:20', 2600, 40500, 2000, 45100, 5000);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6009, 5009, 2003, 104, '2022-08-04 10:45:20', '2022-08-13 10:45:20', 3500, 3000, 400, 6900, 3500);

INSERT INTO Bill_Detail (B_ID, P_ID, R_ID, H_ID, P_AdmitDateTime, P_DischargeDateTime, P_Medicine_Charge, P_TotalDays_Charge, P_Doctor_Charge, P_Total_Amount, P_Pending_Amount)
VALUES (6010, 5010, 2002, 103, '2024-02-04 18:25:10', '2024-02-06 18:25:10', NULL, NULL, NULL, NULL, NULL);


-- Inserting data into Transaction_Detail table
INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7001, '100021', 2755.5, '2023-12-11 12:25:50', 'Cheque', 6001, 5001, 102);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7002, NULL, 11650, '2023-11-20 17:02:10', 'Cash', 6002, 5002, 101);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7003, 'F14O2RD', 15920.56, '2024-01-25 17:30:30', 'Online', 6003, 5003, 103);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7004, '250001', 17225.51, '2022-01-16 11:11:00', 'Cheque', 6004, 5004, 103);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7005, '100001', 8253.4, '2023-12-30 11:30:45', 'Cheque', 6005, 5005, 101);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7006, 'eQ632aB', 10320, '2021-02-24 14:15:20', 'Online', 6006, 5006, 101);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7007, NULL, 12670.35, '2024-02-10 10:45:00', 'Cash', 6007, 5007, 104);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7008, 'KHT98AJ', 3349.74, '2023-04-27 13:30:20', 'Online', 6008, 5008, 101);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7009, '500006', 40100, '2022-08-13 10:45:20', 'Cheque', 6009, 5009, 104);

INSERT INTO Transaction_Detail (Tr_ID, Tr_Amount_ID, Tr_B_Amount, Tr_DateTime, Tr_Type, B_ID, P_ID, H_ID)
VALUES (7010, 'Xze57CK', 3400, '2024-02-06 18:25:10', 'Online', 6010, 5010, 103);
