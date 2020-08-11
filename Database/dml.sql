INSERT INTO Department.Departments
( Name, Location )
VALUES
( 'Marketing', 'Texas' ),
( 'Accounting', 'Texas' ),
( 'IT', 'Texas')

INSERT INTO Employee.Employees
( FirstName, LastName, SSN, DeptId )
VALUES
( 'Tina', 'Smith', 33434222, 1 ),
( 'James', 'Logan', 39399203, 2 ),
( 'Michelle', 'Johnson', 732921323, 3)

INSERT INTO Employee.EmpDetails
( EmployeesId, Salary, Address1, Address2, City, [State], Country )
VALUES
( '1', 80000, '123 Homestead St', 'Apt 192', 'Arlington', 'Texas', 'US' ),
( '2', 75000, '475 Circle Dr', '', 'Addison', 'Texas', 'US' ),
( '3', 85000, '987 Union City Hwy', '', 'Fort Worth', 'Texas', 'US' )