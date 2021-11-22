create database faraz

create table hotel(
Hotel_id          int primary key,
Hotel_name        varchar(50),
Hotel_loc         varchar(50)
);

insert into hotel(Hotel_id,Hotel_name,Hotel_loc)
values(11,'Five Star Hotel','Islamabad')

insert into hotel(Hotel_id,Hotel_name,Hotel_loc)
values(22,'Hotel Maharasta','Karachi')

insert into hotel(Hotel_id,Hotel_name,Hotel_loc)
values(33,'Movenpick hotel','Karachi')

insert into hotel(Hotel_id,Hotel_name,Hotel_loc)
values(44,'Raj Hotel','Lahore')

insert into hotel(Hotel_id,Hotel_name,Hotel_loc)
values(55,'BMJ Hotel','Quetta')

select * from hotel

create table Workers(
emp_id            int primary key,
emp_name          varchar(50),
emp_loc           varchar(50),
emp_age           int,
emp_hiredate      date,
emp_sal           money,
);


insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(88,'Mohammad Faraz','Karachi',21,'12-02-2013',250000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(74,'Aqib Siddiqui','Quetta',24,'01-01-2020',300000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(64,'Huzaifa Alam','Quetta',35,'04-20-2019',20000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(51,'Sultan Mehmood','Islamabad',29,'10-29-2018',500000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(42,'Asshad khan','Karachi',25,'12-02-2011',10000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(39,'Nimrah Fasial','Lahore',32,'05-01-2015',10000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(26,'Saqib Ali','Islamabad',36,'10-22-2016',30000)

insert into Workers(emp_id,emp_name,emp_loc,emp_age,emp_hiredate,emp_sal)
values(10,'Asif Imran ','Karachi',23,'09-28-2013',20000)

select * from Workers

---------------------------------------------------------------------------
select count(emp_sal) from employe

select min(emp_sal) from employe

select max(emp_sal) from employe

select sum(emp_sal) from employe

select avg(emp_sal) from employe

select GETDATE() AS CurrentDateTime

select COUNT(emp_name)
from employe
WHERE emp_age <= 22


SELECT DATEDIFF(MONTH,'1980-12-17','1982-02-11') AS DIFFDATE


SELECT charindex('om','CUSTOMER') AS MatchPosition


SELECT charindex('ad','Mohammad') AS Employe


select lower(emp_name) from Workers


select len(emp_name) from Workers


select upper(emp_name) from Workers


select substring(emp_name,1,4) as extractstring from Workers


select cot(12)


select tan(22)


select pi()


select power(4,9)


select sin(45)


select sqrt(25)


select cos(90)


select * from employe


order by emp_name


select * from employe


order by emp_name ASC


select * from employe


order by emp_name DESC


SELECT COUNT(emp_id), emp_loc
FROM Workers
GROUP BY emp_loc
ORDER BY COUNT(emp_id) DESC;

---------------------------------------------------------------------------

----------------------
SELECT COUNT(emp_name), emp_sal
FROM Workers
GROUP BY emp_sal
ORDER BY COUNT(emp_name) DESC

---------------------
select * from Workers

ORDER BY emp_hiredate DESC


--------------------
select * from Workers

ORDER BY emp_hiredate ASC


-------------------

select emp_id,emp_name,emp_sal + 20 from Workers

------------------

select emp_id,emp_name,emp_sal + 100 from Workers

-------------------

select emp_id,emp_name,emp_sal + 500 from Workers

-------------------
 
 select emp_name,emp_sal + 500 from Workers

 ------------------

 select lower('Mohammad Faraz')

 ------------------

 select substring('Mohammad Faraz',1,15) as extractstring 

 ------------------

select * from Workers where emp_sal <=40000

 ------------------

select * from Workers where emp_sal >=40000

 ------------------

 select len('Mohammad Faraz') 

 ------------------

 select len('Project Manager') 

 ------------------

SELECT SUM(emp_sal) AS "Total Salary"
FROM Workers
WHERE emp_sal > 25000;

 ------------------

select * from Workers where emp_loc like 'karachi' 

 ------------------

select * from Workers where emp_loc like 'Lahore'

 ------------------

 select * from Workers

 ------------------

SELECT SUM(emp_sal) AS "Total Salary"
FROM Workers

 ------------------


select * from Workers where emp_loc like 'Lahore'


------------------

select * from Workers where emp_loc like 'Islamabad'


------------------

select avg(emp_sal) from Workers


------------------

select min(emp_sal) from Workers

------------------

select max(emp_sal) from Workers

------------------

SELECT SUM(emp_sal),avg(emp_sal) AS "Total Salary" 
FROM Workers 
select * from Workers where emp_id!=77

------------------


select * from Workers where emp_sal <40000 and emp_id != 74
select avg(emp_sal) from Workers