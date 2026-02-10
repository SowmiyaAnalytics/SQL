Create database employee_db;
Use employee_db;

create table departments(
department_id int  ,
department_name varchar(100)
); 


create table location(
location_id int ,
location varchar(100));

drop table employees;
Create table Employees 
(
Employee_ID int auto_increment primary key,
Employee_Name varchar(50),
Gender enum('M','F'),
Age int, 
Hire_date date,
Designation varchar(100),
Location_ID int,
Deparment_ID int,
Salary decimal(10,2)
);



Alter table employees 
add email varchar(50);

Alter table employees 
modify designation varchar(200);

Alter table employees 
drop age;

ALTER TABLE Employees
RENAME COLUMN Hire_Date TO Date_Of_Joining;


Alter table departments rename departments_info;

alter table Location rename Locations;

truncate table Employees;

Drop Table Employees;

Drop database employee_db;

-- constraints

Create Database Employee_db;
use employee_db;


Create Table Departments(
    Department_ID INT UNIQUE PRIMARY KEY,
    Department_Name VARCHAR(100) NOT NULL UNIQUE
) ;

Create Table Location(
    Location_ID INT AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(30) NOT NULL UNIQUE
) ;


Create Table Employees
(
    Employee_ID INT auto_increment  PRIMARY KEY,
    Employee_Name VARCHAR(50) NOT NULL,
    Gender ENUM('M','F'),
    Age INT CHECK(Age>=18),
    Hire_Date DATE DEFAULT (CURRENT_DATE),
    Designation VARCHAR(100) ,
    Department_ID INT,
    Location_ID INT,
    Salary DECIMAL(10,2),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID),
    FOREIGN KEY (Location_ID) REFERENCES Location(Location_ID)
);

