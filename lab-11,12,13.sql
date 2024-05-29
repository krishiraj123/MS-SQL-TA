--lab-11 Joins

--1
--The query is wrong as there is no primary key working as a foreign key in the other table

--2
select hd.H_Name,dd.D_Name from Hospital_Detail as hd
inner join Doctor_Detail as dd
on hd.H_ID = dd.H_ID

--3
select pd.P_FirstName,rd.R_Number from Patient_Detail as pd 
inner join Room_Detail as rd
on pd.R_ID = rd.R_ID

--4
select hd.H_Name,pd.P_FirstName,dd.D_Name from Patient_Detail as pd
inner join Hospital_Detail as hd
on pd.H_ID = hd.H_ID
inner join Doctor_Detail as dd
on hd.H_ID = dd.H_ID

--5
select pd.P_FirstName,ad.A_Number,hd.H_Name from Patient_Detail as pd
inner join Hospital_Detail as hd
on pd.H_ID = hd.H_ID
inner join Appointment_Detail as ad
on hd.H_ID = ad.H_ID

--6
select pd.P_FirstName,bd.P_Total_Amount,hd.H_Name from Patient_Detail as pd
inner join Hospital_Detail as hd
on pd.H_ID = hd.H_ID
inner join Bill_Detail as bd
on hd.H_ID = bd.H_ID

--7
select pd.P_FirstName,pd.P_Disease,bd.P_Total_Amount from Patient_Detail as pd
inner join Bill_Detail bd
on pd.P_ID = bd.P_ID
where bd.P_Pending_Amount > 3000

--8
select rd.R_Number,pd.P_FirstName from Room_Detail as rd
left outer join Patient_Detail as pd
on rd.R_ID = pd.R_ID
where pd.R_ID = rd.R_ID

--9
select dd.D_ID,D_Name,pd.P_ID from Doctor_Detail as dd
left outer join Patient_Detail as pd
on dd.D_ID = pd.D_ID

--10
select ad.A_Number,pd.P_ID from Appointment_Detail as ad
right outer join Patient_Detail as pd
on ad.A_ID = pd.A_ID

--11
select rd.R_Number,pd.P_FirstName from Room_Detail as rd
full outer join Patient_Detail as pd
on rd.R_ID = pd.R_ID


-- lab - 13

--1
select D_Name from Doctor_Detail
where D_Salary = (Select top 1 D_Salary from Doctor_Detail order by D_Salary asc)

--2
select pd.P_ID,pd.P_FirstName from Patient_Detail as pd
inner join Bill_Detail as bd
on pd.P_ID = bd.P_ID
where bd.P_Total_Amount = (select top 1 P_Total_Amount from Bill_Detail order by P_Total_Amount desc)

--3
select D_Name,D_ContactNo,D_City from Doctor_Detail
where D_Designation = 'Dentist' --there is no experience column in the table

--4
select pd.P_FirstName from Patient_Detail as pd
inner join Appointment_Detail as ad
on pd.A_ID = ad.A_ID
where ad.A_Date between '2023-11-15' and '2024-02-25'

--5
select dd.D_Name,pd.P_FirstName from Doctor_Detail as dd
inner join Patient_Detail as pd
on dd.D_ID = pd.D_ID
where dd.D_City = pd.P_City