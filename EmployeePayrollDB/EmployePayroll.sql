create database Payroll;

select Name from sys.databases;

use Payroll;


create table EmployeePayroll
(
ID int identity(1,1) primary key,
Name Varchar(100) not null,
Salary money not null,
StartDate date not null,
)


