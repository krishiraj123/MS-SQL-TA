--prractical 4:: DDL And DML Commands

--1
Alter Table Hospital_Detail
Add H_EmailID varchar(50);

Exec sp_help Hospital_Detail

--2
Update Hospital_Detail
Set H_EmailID = 'samarpan@gmail.com'
Where H_ID =101;

Update Hospital_Detail
Set H_EmailID = 'nakshatra@yahoo.in'
Where H_ID =102;

Update Hospital_Detail
Set H_EmailID = 'civilmorbi@gov.in'
Where H_ID =103;

Update Hospital_Detail
Set H_EmailID = 'amity@gmail.com'
Where H_ID =104;

Update Hospital_Detail
Set H_EmailID = 'generalrajkot@gov.in'
Where H_ID =105;

select * from Hospital_Detail

--3
Alter Table Room_Detail
Add H_ID int;

Exec sp_help Room_Detail

--4
Update Room_Detail
Set H_ID = 101
Where R_ID =2001;

Update Room_Detail
Set H_ID = 103
Where R_ID =2002;

Update Room_Detail
Set H_ID = 104
Where R_ID =2003;

Update Room_Detail
Set H_ID = 103
Where R_ID =2004;

Update Room_Detail
Set H_ID = 102
Where R_ID =2005;

Update Room_Detail
Set H_ID = 104
Where R_ID =2006;

Update Room_Detail
Set H_ID = 102
Where R_ID =2007;

Update Room_Detail
Set H_ID = 101
Where R_ID =2008;

Update Room_Detail
Set H_ID = 105
Where R_ID =2009;

Update Room_Detail
Set H_ID = 105
Where R_ID =2010;

select * from Room_Detail

--5
Update Patient_Detail
Set P_Address='Green city main Road'
where P_ID= 5009;

select * from Patient_Detail

--6
Delete From Doctor_Detail
Where D_ID = 3010;

select * from Doctor_Detail

--7
Delete From Appointment_Detail
Where A_ID = 4008;

select * from Appointment_Detail

--8

--9
Alter table Appointment_Detail
Alter column A_Date date;

exec sp_help Appointment_Detail

--10
Alter Table Patient_Detail
Drop Column P_MiddleName;

exec sp_help Patient_Detail

--11
Alter Table Doctor_Detail
Drop Column D_Gender;

exec sp_help Doctor_Detail

--12
exec sp_rename 'Transaction_Detail.Tr_B_Amount' , 'Tr_Bill_Amount' , 'Column';

exec sp_help Transaction_Detail

--13
select * from Hospital_Detail
select * from Room_Detail

--14
select R_ID,R_Number,R_Availability from Room_Detail

--15
select H_Name,H_ContantNo from Hospital_Detail
Where H_Type = 'Private Hospital'

--16
Select P_FirstName , P_LastName , P_ContantNo , P_Disease , P_City from Patient_Detail
where P_City='Ahmedabad'

--17
Select P_ID , P_FirstName , P_ContantNo , P_City from Patient_Detail
where P_Disease = 'Tooth Break'

--18
select * from Room_Detail
Where R_Type ='Non-AC'

--19
select * from Doctor_Detail
Where D_Designation='Ortho'

--20
exec sp_rename 'Transaction_Detail' , 'Transaction_Master';
