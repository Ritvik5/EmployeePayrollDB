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


insert into EmployeePayroll values 
('Jack',25000,'2019-05-08'),
('Smith',15000,'2022-01-01'),
('John',35000,'2019-08-19'),
('Snow',45000,'2018-09-20');

