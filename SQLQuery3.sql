CREATE TABLE Employees (
    id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Fullname NVARCHAR(250) NOT NULL,
    Age INT NOT NULL CHECK (Age >= 0),
    email NVARCHAR(255) NOT NULL UNIQUE, -- Increased size to 255
    salary DECIMAL(10,2) NOT NULL CHECK (salary > 300 AND salary < 2000) -- Added precision for salary
);
INSERT INTO Employees (Fullname, Age, email, salary) 
VALUES ('John Doe', 30, 'john@example.com', 1000.00),
       ('Jane Smith', 25, 'jane@example.com', 1500.00),
       ('Alice Johnson', 35, 'alice@example.com', 800.00);

	   SELECT * FROM Employees;
	   UPDATE Employees SET salary=1200.56 where id=1
	   SELECT * FROM Employees where salary  BETWEEN  500 And 1400
	   SELECT Fullname, email, salary FROM Employees ORDER BY salary;