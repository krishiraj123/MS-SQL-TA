--Lab-11:

--1
SELECT H_Name, R_Type
FROM Hospital as hos
INNER JOIN Room_Detail as room
ON hos.H_ID = room.H_ID;

--2
SELECT H_Name, D_Name
FROM Hospital as hos
INNER JOIN Doctor_Detail as doctor
ON hos.H_ID = doctor.H_ID;

--3
SELECT P_FirstName, R_Number
FROM Patient_Detail as Patient
INNER JOIN Room_Detail as Room 
ON Patient.R_ID = Room.R_ID;

--4
SELECT H_Name, P_FirstName, D_Name
FROM Hospital as hos
INNER JOIN Doctor_Detail as Doctor
ON hos.H_ID = Doctor.H_ID
INNER JOIN Patient_Detail as Patient
ON Doctor.D_ID = Patient.D_ID;

--5
SELECT P_FirstName, A_Number, H_Name
FROM Patient_Detail as Patient
INNER JOIN Appointment_Detail as Appointment
ON Patient.A_ID = Appointment.A_ID
INNER JOIN Hospital 
ON Appointment.H_ID = Hospital.H_ID;

--6
SELECT P_FirstName, P_Total_Amount, H_Name
FROM Patient_Detail as Patient
INNER JOIN Bill_Detail as Bill 
ON Patient.P_ID = Bill.P_ID
INNER JOIN Hospital 
ON Bill.H_ID = Hospital.H_ID;

--7
SELECT P_FirstName, P_Disease, P_Total_Amount, B_ID
FROM Patient_Detail as Patient
INNER JOIN Bill_Detail as Bill
ON Patient.P_ID = Bill.P_ID
WHERE P_Pending_Amount > 3000;

--8
SELECT Doctor.D_ID , D_Name, P_ID
FROM Doctor_Detail as Doctor
LEFT OUTER JOIN Patient_Detail as Patient
ON Doctor.D_ID = Patient.D_ID;

--9
SELECT A_Number, Patient.P_ID, P_FirstName
FROM Appointment_Detail as Appointment
RIGHT OUTER JOIN Patient_Detail as Patient
ON Appointment.A_ID = Patient.A_ID;

--10
SELECT Room.R_Number, Patient.P_FirstName
FROM Room_Detail as Room
FULL OUTER JOIN Patient_Detail as Patient ON Room.R_ID = Patient.R_ID;



---Lab-12---
--Syntax--

-- Apply Unique Constraint
ALTER TABLE Table_Name
ADD CONSTRAINT Unique_Column_Name UNIQUE (Column_Name);

-- Apply Primary Key
ALTER TABLE Table_Name
ADD CONSTRAINT PK_Column_Name PRIMARY KEY (Column_Name);

-- Apply Foreign Key
ALTER TABLE Table_Name
ADD CONSTRAINT FK_Column_Name FOREIGN KEY (Column_Name) REFERENCES Referenced_Table(Referenced_Column_Name);

-- (1) Apply Unique Constraints
ALTER TABLE Hospital_Detail
ADD CONSTRAINT Unique_H_EmailID UNIQUE (H_EmailID);

ALTER TABLE Doctor_Detail
ADD CONSTRAINT Unique_D_EmailID UNIQUE (D_EmailID);

ALTER TABLE Transaction_Master ADD CONSTRAINT tr_numb UNIQUE (Tr_Number, Tr_ID);

-- (2) Apply Primary Keys
ALTER TABLE Hospital_Detail
ADD CONSTRAINT PK_H_ID PRIMARY KEY (H_ID);

ALTER TABLE Room_Detail
ADD CONSTRAINT PK_R_ID PRIMARY KEY (R_ID);

ALTER TABLE Doctor_Detail
ADD CONSTRAINT PK_D_ID PRIMARY KEY (D_ID);

ALTER TABLE Appointment_Detail
ADD CONSTRAINT PK_A_ID PRIMARY KEY (A_ID);

ALTER TABLE Patient_Detail
ADD CONSTRAINT PK_P_ID PRIMARY KEY (P_ID);

ALTER TABLE Bill_Detail
ADD CONSTRAINT PK_B_ID PRIMARY KEY (B_ID);

ALTER TABLE Transaction_Master
ADD CONSTRAINT PK_Tr_ID PRIMARY KEY (Tr_ID);

-- (3) Apply Foreign Keys
ALTER TABLE Room_Detail
ADD CONSTRAINT FK_H_ID_Room_Detail FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);

ALTER TABLE Doctor_Detail
ADD CONSTRAINT FK_H_ID_Doctor_Detail FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);

ALTER TABLE Appointment_Detail
ADD CONSTRAINT FK_D_ID_Appointment_Detail FOREIGN KEY (D_ID) REFERENCES Doctor_Detail(D_ID);

ALTER TABLE Appointment_Detail
ADD CONSTRAINT FK_H_ID_Appointment_Detail FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);

ALTER TABLE Patient_Detail
ADD CONSTRAINT FK_A_ID_Patient_Detail FOREIGN KEY (A_ID) REFERENCES Appointment_Detail(A_ID);

ALTER TABLE Patient_Detail
ADD CONSTRAINT FK_R_ID_Patient_Detail FOREIGN KEY (R_ID) REFERENCES Room_Detail(R_ID);

ALTER TABLE Patient_Detail
ADD CONSTRAINT FK_D_ID_Patient_Detail FOREIGN KEY (D_ID) REFERENCES Doctor_Detail(D_ID);

ALTER TABLE Patient_Detail
ADD CONSTRAINT FK_H_ID_Patient_Detail FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);

ALTER TABLE Bill_Detail
ADD CONSTRAINT FK_P_ID_Bill_Detail FOREIGN KEY (P_ID) REFERENCES Patient_Detail(P_ID);

ALTER TABLE Bill_Detail
ADD CONSTRAINT FK_R_ID_Bill_Detail FOREIGN KEY (R_ID) REFERENCES Room_Detail(R_ID);

ALTER TABLE Bill_Detail
ADD CONSTRAINT FK_H_ID_Bill_Detail FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);

ALTER TABLE Transaction_Master
ADD CONSTRAINT FK_B_ID_Transaction_Master FOREIGN KEY (B_ID) REFERENCES Bill_Detail(B_ID);

ALTER TABLE Transaction_Master
ADD CONSTRAINT FK_P_ID_Transaction_Master FOREIGN KEY (P_ID) REFERENCES Patient_Detail(P_ID);

ALTER TABLE Transaction_Master
ADD CONSTRAINT FK_H_ID_Transaction_Master FOREIGN KEY (H_ID) REFERENCES Hospital_Detail(H_ID);


-- Lab-13

-- 13.1
SELECT D_Name
FROM Doctor_Detail
WHERE D_Salary = (SELECT MIN(D_Salary) FROM Doctor_Detail);

-- 13.2
Select P_ID,P_FIRSTNAME From Patient_Detail
Where P_ID =
(
Select P_ID From Bill_Detail
Where P_TOTAL_AMOUNT = (Select Max(P_TOTAL_AMOUNT) From Bill_Detail)
);

-- 13.3
Select * From Doctor_Detail
Where H_ID IN
(
Select H_ID From Hospital_Detail
Where H_TYPE = 'Private Hospital'
);

-- 13.5
Select D.D_Name,P.P_FIRSTNAME,D.D_CITY,P.P_CITY
From Doctor_Detail As D Inner Join Patient_Detail As P
On D.D_ID=P.D_ID
Where D.D_CITY In
(
Select P_City From Patient_Detail
Where D.D_CITY=P.P_CITY
);

--13.6
SELECT P_FirstName
FROM Patient_Detail
WHERE P_ID IN (
    SELECT P_ID
    FROM Bill_Detail
    WHERE P_Pending_Amount = 0
);
