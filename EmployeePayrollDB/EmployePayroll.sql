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


select * from EmployeePayroll;



select Salary from EmployeePayroll where Name = 'Jack';
select * from EmployeePayroll where StartDate between '2019-01-01' and getdate();


alter table EmployeePayroll add Gender char(1);
update EmployeePayroll set Gender = 'M' where Name = 'Jack' or Name = 'Smith' or Name = 'John';
update EmployeePayroll set Gender = 'F' where Name = 'Snow';



select sum(Salary) from EmployeePayroll where Gender = 'M';
select sum(Salary) from EmployeePayroll where Gender = 'F';
select Avg(Salary) from EmployeePayroll where Gender = 'M';


Select Name, Salary from EmployeePayroll where Salary = ( Select Max(Salary) from EmployeePayroll )
Select Name, Salary from EmployeePayroll where Salary = ( Select Min(Salary) from EmployeePayroll )


select sum(Salary) as TotalMaleSalary from EmployeePayroll where Gender = 'M' group by  Gender ;
select sum(Salary) as TotalFemaleSalary from EmployeePayroll where Gender = 'F' group by  Gender ;
select sum(Salary) as TotalMaleAndFemaleSalary from EmployeePayroll;

select Avg(Salary) as AverageMaleSalary from EmployeePayroll where Gender = 'M' group by  Gender ;
select Avg(Salary) as AverageFemaleSalary from EmployeePayroll where Gender = 'F' group by  Gender ;
select Avg(Salary) as AverageMaleAndFemaleSalary from EmployeePayroll;

select Max(Salary) as MaxMaleSalary from EmployeePayroll where Gender = 'M' group by  Gender ;
select Max(Salary) as MaxFemaleSalary from EmployeePayroll where Gender = 'F' group by  Gender ;
select Max(Salary) as MaxMaleAndFemaleSalary from EmployeePayroll ;

select Min(Salary) as MinMaleSalary from EmployeePayroll where Gender = 'M' group by  Gender ;
select Min(Salary) as MinFemaleSalary from EmployeePayroll where Gender = 'F' group by  Gender ;
select Min(Salary) as MinMaleAndFemaleSalary from EmployeePayroll ;

select Count(Salary) as NumberOfMaleSalary from EmployeePayroll where Gender = 'M' group by  Gender ;
select Count(Salary) as NumberOfFemaleSalary from EmployeePayroll where Gender = 'F' group by  Gender ;
select Count(Salary) as TotalCountOfSalaryEmployee from EmployeePayroll ;


alter table EmployeePayroll add 
EmpPhoneNumber varchar(15),
EmpAddress varchar(300) not null Default 'India',
EmpDepartment varchar(100) not null Default 'CS';




