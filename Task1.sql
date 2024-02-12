SELECT TOP 5 e.EmployeeID, e.JobTitle, a.AddressID, a.AddressText FROM Employees e Join Addresses a ON e.AddressID = a.AddressID Order by a.AddressID;
-- part one
SELECT TOP 5 e.EmployeeID, e.FirstName,e.Salary , d.Name as DepartmentName from Employees e JOIN Departments d ON d.DepartmentID = e.DepartmentID Where e.Salary > 15000 Order by d.DepartmentID;
-- part two
SELECT TOP 3 e.EmployeeID, e.FirstName FROM Employees e WHERE e.EmployeeID NOT IN (SELECT ep.EmployeeID FROM EmployeesProjects ep) ORDER BY e.EmployeeID;
SELECT TOP 3 e.EmployeeID, e.FirstName FROM Employees e LEFT JOIN EmployeesProjects ep ON ep.EmployeeID = e.EmployeeID Where ep.ProjectID IS NULL ORDER BY e.EmployeeID;
--part three
SELECT TOP 5 e.EmployeeID, e.FirstName, p.Name AS [projectName] From Employees e Join EmployeesProjects ep ON e.EmployeeID=ep.EmployeeID Join Projects p ON p.ProjectID = ep.ProjectID Where p.StartDate > '08-13-2002' And p.EndDate IS NULL ORDER BY e.EmployeeID;