CREATE : It is used to create the database and its objects (like tables, functions, views, indexes, procedures, triggers).
-------------------------------------------------------------------------------------------
CREATE DATABASE database_name; 
--This query will create a new database in SQL and name the database as the provided name.

CREATE TABLE Employees {
 Emp_Id int(3),
 Emp_Name varchar(20)
};
--This will create a table Employees with column Emp_Id which stores integer data of length 3 and Emp_Name which stores string data of length 20.
---------------------

ALTER TABLE Employees ADD Salary DOUBLE(8,2);
--This query will add a column Salary to the existing table Employees. If the table Employees do not exist, an error will be generated.

DROP DATABASE Company;
--The database Company is deleted from the relational database management system.

DROP TABLE Employees;
--This SQL command will remove the table structure along with its data from the database.


SELECT emp_name  FROM employee  WHERE age > 20;  
-- Select the employee names whose age is greater then 20 years 

Insert into dbo.sales values(1,'HP Product',3,1233)
-- Insert the data into Sales table 

UPDATE dbo.sales SET Description='HP Product v2' Where Description ='HP Product'
-- Update the sales decription where Description are 'HP Product' 


DELETE FROM dbo.sales Where ID=11
--Delete the sales data based on ID 


GRANT SELECT ON dbo.sales TO [crop\sales];
-- The Grant command allows to grant permissions to an object. 


REVOKE EXECUTE ON dbo.listCustomers to corp\dhiren
--The revoke statement allows to revoke permissions to database objects.


DENY UPDATE ON dbo.users to managers
--The DENY sentence allows to deny permissions to certain objects. The main difference between a Revoke and a Deny permission is that the revoke undoes permission while a deny blocks the access to that permission
-