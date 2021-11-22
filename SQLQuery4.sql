create database city

create table cityName(
Cid       int primary key,
city      varchar(50)
);

insert into cityName(Cid,city)
values(1,'Karachi')

insert into cityName(Cid,city)
values(2,'Lahore')

insert into cityName(Cid,city)
values(3,'Quetta')

insert into cityName(Cid,city)
values(4,'Azad Kashmir')

insert into cityName(Cid,city)
values(5,'Islamabad')

insert into cityName(Cid,city)
values(6,'Peshawar')

select * from cityName 


create table Std(
S_id           int primary key,
Sname         varchar(50),
S_age         int,
S_gender      varchar(10),
S_city        int,
FOREIGN KEY(S_city) REFERENCES cityName (Cid)
);

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(101,'Mohammad Faraz','Male',20,3)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(231,'Aslam Khan','Male',23,4)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(154,'Uroosa khan','Female',21,5)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(186,'Shahzain Khan','Male',26,1)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(95,'Marium Shahab','Female',32,3)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(11,'Mohammad Fahim Khan','Male',29,6)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(280,'Muaz Shakir','Male',35,1)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(100,'Atif Aslam','Male',30,6)

insert into Std(S_id,Sname,S_gender,S_age,S_city)
values(211,'Saleem Khan','Male',21,1)

select * from Std


-------------------------------------------------------------------------------------------------------------------

select * from Std INNER JOIN cityName
ON Std.S_city = cityName.Cid
-------------------------------------------------------------------------------------------------------------------

select * from Std s INNER JOIN cityName c
ON s.S_city = c.Cid
-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s INNER JOIN cityName c
ON s.S_city = c.Cid
-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s JOIN cityName c
ON s.S_city = c.Cid
WHERE c.city = 'Karachi'
-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s JOIN cityName c
ON s.S_city = c.Cid
WHERE c.city = 'Karachi'
ORDER BY s.Sname;

-------------------------------------------------------------------------------------------------------------------

select * from Std LEFT JOIN cityName
ON Std.S_city = cityName.Cid

-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s LEFT JOIN cityName c
ON s.S_city = c.Cid
WHERE S_gender = 'Male'

-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s LEFT JOIN cityName c
ON s.S_city = c.Cid
WHERE S_gender = 'Male'
ORDER BY Sname

-------------------------------------------------------------------------------------------------------------------

select * from Std RIGHT JOIN cityName
ON Std.S_city = cityName.Cid

-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s Right JOIN cityName c
ON s.S_city = c.Cid
WHERE S_gender = 'Female'

-------------------------------------------------------------------------------------------------------------------

select * from Std s RIGHT JOIN cityName c
ON s.S_city = c.Cid
WHERE S_gender = 'Male'
ORDER BY Sname

-------------------------------------------------------------------------------------------------------------------

select * from Std CROSS JOIN cityName

-------------------------------------------------------------------------------------------------------------------

select s.S_id,s.Sname,s.S_age,s.S_gender,c.city
from Std s CROSS JOIN cityName c
WHERE S_gender = 'Female'

-------------------------------------------------------------------------------------------------------------------

select * from Std s CROSS JOIN cityName c
WHERE S_gender = 'Male'
ORDER BY Sname

-------------------------------------------------------------------------------------------------------------------
