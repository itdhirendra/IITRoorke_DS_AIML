--Tasks To Be Performed:
--1. Create a view named ‘customer_san_jose’ which comprises of only those customers who are from San Jose
	Create VIEW dbo.vw_customer_san_jose
	AS	
	Select customer_id
		,first_name
		,last_name
		,email
		,address
		,city
		,state
		,zip
		from  dbo.Customer where city = 'SanJose'
	
--2. Inside a transaction, update the first name of the customer to Francis where the last name is Jordan:
		BEGIN Transaction 
		update dbo.vw_customer_san_jose set first_name = 'Francis' where last_name = 'Jordan'

	--a. Rollback the transaction
		Rollback Transaction 

	--b. Set the first name of customer to Alex, where the last name is Jordan
		update dbo.vw_customer_san_jose set first_name = 'Alex' where last_name = 'Jordan'

--3. Inside a TRY... CATCH block, divide 100 with 0, print the default error message. 
	BEGIN TRY   
		-- Generate divide-by-zero error.  
		SELECT 100/0;  
	END TRY  
	BEGIN CATCH  
		PRINT('divide-by-zero error')
	END CATCH; 

--4. Create a transaction to insert a new record to Orders table and saveit.
	BEGIN Transaction 
			INSERT INTO Orders (order_id, order_date, amount, customer_id)
			VALUES	(6, '2023-07-12', 300.75, 1)
	Commit Transaction
