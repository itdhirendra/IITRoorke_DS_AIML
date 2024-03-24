--Tasks To Be Performed:
--1. Create a customer table which comprises of these columns: 
--‘customer_id’,‘first_name’, ‘last_name’, ‘email’, ‘address’, ‘city’,’state’,’zip’ 

 
	Create Table dbo.Customer(
			customer_id  INT Primary Key,
			first_name Varchar(256), 
			last_name Varchar(256), 
			email Varchar(256), 
			address Varchar(1000), 
			city Varchar(256)	,
			state Varchar(256)	,
			zip Varchar(10)
		)
 


--2. Insert 5 new records into the table
 
Insert into dbo.Customer (customer_id,first_name,last_name,email,address,city,state,zip)
VALUES 
(1, 'William', 'Jordan' , 'wjames@gmail.com', '10th Avenue, Street 13 ', 'SanJose','LDN','TX77019' ),
(2, 'Alexander', 'Alexa' , 'alexJulian@hotmail.com', '724 SW. San Juan Lane Bronx ', 'NY','USA','NY10451' ),
(3, 'Grace', 'Thomas' , 'gthomas@gmail.com', ' 552 ,Lane Bronx', 'SanJose','LDN','400037' ),
(4, 'Jerry', 'Smith' , 'jsmith@yahoo.com', '225 Houston 12th Avenue', 'Houston','USA','TX88022' ),
(5, 'Ravi', 'Kumar' , 'ravik@gmail.com', ' 1044 South Extension', 'Delhi','Delhi','700052' )

--3. Select only the ‘first_name’ and ‘last_name’ columns fromthe customer table

Select first_name , last_name from dbo.Customer

--4. Select those records where ‘first_name’ starts with “G” and city is ‘SanJose’. 

Select first_name from dbo.Customer where first_name like 'G%' and city = 'SanJose'

--5. Select those records where Email has only ‘gmail’. 
Select * from dbo.Customer where email like '%gmail%'  

--6. Select those records where the ‘last_name’ doesn't end with “A”.
Select * from dbo.Customer where last_name like '%a'  
