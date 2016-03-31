USE SteveRef
GO

IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'Employees' AND TABLE_NAME = 'SalesOrg')
	DROP TABLE SteveRef.Employees.SalesOrg
GO

--IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'Employees')
--	DROP SCHEMA Employees
--	PRINT 'Schema is present'
--GO

--CREATE SCHEMA Employees
--GO

CREATE TABLE Employees.SalesOrg (
	EmployeeID int IDENTITY(1,1) PRIMARY KEY,
	EmployeeFirstName varchar(75) NOT NULL,
	EmployeeMiddleName varchar(50),
	EmployeeLastName varchar(50) NOT NULL,
	EmployeeTitle varchar(25),
	EmployeeHireDate date DEFAULT GETDATE(),
	CountryID int
) 
GO

INSERT INTO Employees.SalesOrg(EmployeeFirstName, EmployeeLastName, EmployeeTitle, CountryID) VALUES ('Steve','Ancliffe','Sales','1')
INSERT INTO Employees.SalesOrg(EmployeeFirstName, EmployeeLastName, CountryID) VALUES ('John', 'Doe', '1')
GO

SELECT * FROM Employees.SalesOrg
