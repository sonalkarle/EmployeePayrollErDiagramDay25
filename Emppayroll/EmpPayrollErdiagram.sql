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