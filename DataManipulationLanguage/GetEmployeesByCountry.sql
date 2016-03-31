USE SteveRef
GO

SELECT Employees.SalesOrg.EmployeeFirstName, Employees.SalesOrg.EmployeeLastName, Employees.Country.CountryName
	FROM Employees.SalesOrg INNER JOIN Employees.Country 
		ON Employees.SalesOrg.CountryID = Employees.Country.CountryID