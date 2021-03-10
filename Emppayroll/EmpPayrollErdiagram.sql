--UC1: Create database for employee payroll
create database Emppayroll;
SELECT * FROM sys.databases ; 
use Emppayroll;

--UC2:Create table for employee payroll
create Table Emppayroll
(
ID			int	identity(1, 1),
Name		varchar(255) NOT Null,
Salary		int,
StartDate	Date,
primary key(ID)
)

--UC3:Ability to use insert option
insert into Emppayroll(Name, Salary, StartDate) values
('dhoni', 20000, '2018-01-01'),
('kohli', 45000, '2019-01-01'),
('rahane', 22000, '2020-01-01');

--UC4:Ability to retrive data
select * from Emppayroll;

--UC5: Find particular person salary and particular date range 
select salary from Emppayroll where Name = 'dhoni';
select * from Emppayroll where StartDate	between '2020-01-01' and GETDATE();

--UC6:Ability to add geneder row in table
alter table Emppayroll add Gender char(1)
update Emppayroll set Gender = 'M'; 
insert into Emppayroll(Name, Salary, StartDate,Gender) values
('shravni', 15000, '2019-01-01','F'),
('seema', 30000, '2020-01-01','F');
