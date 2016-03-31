USE SteveRef
GO

IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Country')
	DROP TABLE Employees.Country
GO

CREATE TABLE Employees.Country (
	CountryID int IDENTITY(1,1),
	CountryCanada varchar(100) NOT NULL
)
GO

INSERT INTO Employees.Country VALUES ('Canada')
GO

SELECT * FROM Employees.Country