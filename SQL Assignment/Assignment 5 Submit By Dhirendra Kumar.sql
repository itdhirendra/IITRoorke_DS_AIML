 --Tasks To Be Performed:
--1. Arrange the ‘Orders’ dataset in decreasing order of amount
		Select * from dbo.orders order by amount
--2. Create a table with the name ‘Employee_details1’ consisting of these 
--columns: ‘Emp_id’, ‘Emp_name’, ‘Emp_salary’. Create another table with
--the name ‘Employee_details2’ consisting of the same columns as the first
--table.
		CREATE TABLE Employee_details1 (
		Emp_id INT PRIMARY KEY,
		Emp_name VARCHAR(100),
		Emp_salary DECIMAL(10, 2)
		);


		CREATE TABLE Employee_details2 (
		Emp_id INT PRIMARY KEY,
		Emp_name VARCHAR(100),
		Emp_salary DECIMAL(10, 2)
		);
		-- Insert 5 records into 'Employee_details1'
		INSERT INTO Employee_details1 (Emp_id, Emp_name, Emp_salary)
		VALUES
		(1, 'Alice Johnson', 2000.00),
		(2, 'Jane Smith', 50000.00),
		(3, 'Robert Williams', 75000.00),
		(4, 'Emily Brown', 55000.00),
		(5, 'David Lee', 65000.00);

		-- Insert 5 different records into 'Employee_details2'
		INSERT INTO Employee_details2 (Emp_id, Emp_name, Emp_salary)
		VALUES
		(1, 'John Doe', 80000.00),
		(11, 'Michael Johnson', 90000.00),
		(12, 'Sophia Davis', 70000.00),
		(13, 'Emily Brown', 85000.00),
		(5, 'David Lee', 95000.00)

--3. Apply the UNION operator on these two tables
	  Select Emp_name from  Employee_details1 
	  UNION 
	  Select Emp_name from  Employee_details2 


	  Select Emp_name from  Employee_details1 
	  UNION ALL 
	  Select Emp_name from  Employee_details2 

--4. Apply the INTERSECT operator on these two tables

	Select Emp_name from  Employee_details1 
	INTERSECT 
	Select Emp_name from  Employee_details2 
--5. Apply the EXCEPT operator on these two tables

	Select Emp_name from  Employee_details1 
	EXCEPT 
	Select Emp_name from  Employee_details2 