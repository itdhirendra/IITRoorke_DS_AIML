--1. Create an ‘Orders’ table which comprises of these columns: ‘order_id’,‘order_date’, ‘amount’, ‘customer_id’. 
	 
		CREATE TABLE dbo.Orders (
				order_id INT PRIMARY KEY,
				order_date DATE,
				amount DECIMAL(10, 2),
				customer_id INT
		);
	 
--2. Insert 5 new records. 
	INSERT INTO Orders (order_id, order_date, amount, customer_id)
	VALUES
	(1, '2022-07-25', 500.50, 1),
	(2, '2020-07-26', 250.25, 2),
	(3, '2022-07-26', 80.00, 3),
	(4, '2021-07-27', 150.75, 1),
	(5, '2023-07-27', 111.00, 4);

--3. Make an inner join on ‘Customer’ and ‘Orders’ tables on the ‘customer_id’ column. 
	SELECT * FROM dbo.Customer c
	INNER JOIN dbo.Orders o ON c.customer_id = o.customer_id;

--4. Make left and right joins on ‘Customer’ and ‘Orders’ tables on the‘customer_id’ column. 
	SELECT * FROM dbo.Customer c
	LEFT JOIN dbo.Orders o ON c.customer_id = o.customer_id;

	SELECT * FROM dbo.Customer c
	RIGHT JOIN dbo.Orders o ON c.customer_id = o.customer_id;

--5. Make a full outer join on ‘Customer’ and ‘Orders’ table on the ‘customer_id’ column. 

	SELECT * FROM dbo.Customer c
	FULL OUTER JOIN dbo.Orders o ON c.customer_id = o.customer_id;

--6. Update the ‘Orders’ table and set the amount to be 100 where‘customer_id’ is 3.
	update dbo.Orders set amount = 100 where customer_id = 3 