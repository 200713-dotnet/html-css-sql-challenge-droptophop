CREATE SCHEMA Employee
go

CREATE SCHEMA Department
go

CREATE TABLE Department.Departments
(
    Id INT IDENTITY (1,1) NOT NULL,
    Name NVARCHAR(250) NOT NULL,
    CONSTRAINT PK_Id PRIMARY KEY (Id)
);

CREATE TABLE Employee.Employees
(
    EmpId INT IDENTITY (1,1) NOT NULL,
    FirstName NVARCHAR(250) NOT NULL,
    LastName NVARCHAR(250) NOT NULL,
    SSN INT NOT NULL,
    DeptId INT NOT NULL,
    CONSTRAINT PK_EmpId PRIMARY KEY (EmpId),
    CONSTRAINT FK_DeptId FOREIGN KEY (DeptId) REFERENCES Department.Departments(Id)
);

CREATE TABLE Employee.EmpDetails
(
    Id INT IDENTITY (1,1) NOT NULL,
    EmployeesId INT NOT NULL,
    Salary MONEY NOT NULL,
    Address1 NVARCHAR(250) NOT NULL,
    Address2 NVARCHAR(250),
    City NVARCHAR(250) NOT NULL,
    [State] NVARCHAR(250) NOT NULL,
    CONSTRAINT PK_Id PRIMARY KEY (Id),
    CONSTRAINT FK_EmployeeId FOREIGN KEY (EmployeesId) REFERENCES Employee.Employees(EmpId)
);