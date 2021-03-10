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


--UC7:Ability to find avg,min,max and count
select sum(Salary) as total_salary from Emppayroll
select avg(Salary) as average_salary from Emppayroll
select min(Salary) as min_salary from Emppayroll
select max(Salary) as max_salary from Emppayroll
select count(Salary) as salary_count from Emppayroll

select Gender, sum(Salary) as total_salary from Emppayroll group by Gender
select Gender, count(Salary) as salary_count from Emppayroll group by Gender
select Gender, max(Salary) as max_salary from Emppayroll group by Gender;


--UC8:Add address and department extend the row
alter table employee_Payroll add PhoneNumber bigint, Address varchar(150) default('Mumbai'), Department varchar(50)  ;

--UC9:Ability to extend basic pay,deduction,tax pay,Income tax,net pay
alter table Emppayroll add Deduction int, TaxablePay int, IncomeTax int, NetPay int;
EXEC sp_RENAME 'Emppayroll.Salary', 'BasicPay', 'column'

--UC10:Add terissa for marketing and sales
insert into Emppayroll(Name, BasicPay, StartDate,Gender) values
('Terissa', 15000, '2019-01-01','F');
update Emppayroll set Department = 'Sales'  where Name  = 'Terissa';
insert into Emppayroll(Name, Department) values('Terissa', 'Marketing');