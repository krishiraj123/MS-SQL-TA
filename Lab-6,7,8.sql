--Lab-6

--1
select R_Type,count(R_ID) from Room_Detail
group by R_Type

--2
select P_City,count(P_ID) from Patient_Detail
group by P_City

--3
select count(H_ID) from Hospital_Detail
where H_Canteen_Facility = 1

--4
select P_Disease,count(P_ID) from Patient_Detail
group by P_Disease

--5
select count(D_ID) from Doctor_Detail
where D_Designation = 'Dentist'

--6
select Tr_Type,count(Tr_ID) from Transaction_Detail
group by Tr_Type

--7
select H_Name from Hospital_Detail
order by H_Name desc

--8
select D_Name from Doctor_Detail
order by D_Name

--9
select D_Name,D_EmailID,H_ID from Doctor_Detail
order by D_Salary desc

--10
select * from Room_Detail
order by R_Charge

--11
select * from Patient_Detail
order by P_Age desc


--Lab-7

--1
select D_ID,D_Name,D_Salary*0.9 from Doctor_Detail
where D_Designation = 'MD'

--2
select R_Number,R_Type,R_Charge*1.7 from Room_Detail
--or
select R_Number,R_Type,(R_Charge + R_Charge * 0.7) from Room_Detail

--3
select P_FirstName+' '+P_MiddleName+' '+P_LastName from Patient_Detail
where P_Age < 40

--4
select R_Type,R_Charge from Room_Detail
where R_Charge > 2000

--5
select D_ID,D_Name,D_EmailID from Doctor_Detail
where D_Designation <> 'Ortho'

--6
select P_ID,P_FirstName,P_ContactNo,P_City from Patient_Detail
where P_Disease in ('Brain Tumor','Tooth Break')

--7
select * from Hospital_Detail
where H_Type = 'Private'
and H_Canteen_Facility = 1

--8
select D_Name,D_City,D_Designation from Doctor_Detail
where D_City not in ('Rajkot','Jamnagar')

--9
select B_ID,P_ID from Bill_Detail
where P_Pending_Amount >= 3000

--10
select D_ID,D_Name,D_City,D_Salary from Doctor_Detail
where D_Salary <= 50000
and D_City = 'Rajkot'


--Lab-8

--1
select R_ID,R_Availability,R_Charge from Room_Detail
where R_Charge between 2000 and 5000

--2
select D_ID,D_Name,D_Designation from Doctor_Detail
where D_Salary between 40000 and 80000

--3
select P_ID,P_FirstName,P_ContactNo,P_Disease from Patient_Detail
where P_City in ('Rajkot','Morbi','Bhavnagar')

--4
select A_ID,A_Number,H_ID from Appointment_Detail
where A_Date between '2023-05-01' and '2023-12-31'

--5
select H_Name from Hospital_Detail
where H_Name like 'R%'

--6
select D_Name,D_City,D_Designation from Doctor_Detail
where D_Name like '%a'

--7
select P_FirstName,P_Age,P_Disease from Patient_Detail
where P_Disease_Remarks like '%r_'

--8
select D_Name from Doctor_Detail
where D_Name like '%i%'

--9
select P_FirstName,P_Address,P_ContactNo from Patient_Detail
where P_City not in ('Rajkot','Morbi')

--10
select * from Bill_Detail
where P_AdmitDateTime between '2023-01-10 00:00:00:000' and '2024-01-31 00:00:00:000'



