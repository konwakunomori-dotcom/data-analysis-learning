-- Basic SELECT example
-- Learning SQL with SQLite

-- Create a sample table
CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY,
    FirstName TEXT,
    LastName TEXT,
    Department TEXT,
    Salary INTEGER
);

-- Insert sample data
INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES
('Taro', 'Yamada', 'Sales', 500),
('Hanako', 'Suzuki', 'HR', 450),
('Ken', 'Tanaka', 'IT', 600);

-- Select all employees
SELECT * FROM Employees;

-- Select employees in IT department
SELECT FirstName, LastName
FROM Employees
WHERE Department = 'IT';

-- Calculate average salary
SELECT Department, AVG(Salary) as AvgSalary
FROM Employees
GROUP BY Department;
