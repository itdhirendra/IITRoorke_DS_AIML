--1. Use the inbuilt functions and find the minimum, maximum and average amount from the orders table
	Select min(amount) [Minimum],  max(amount) [Maximum], Avg(amount) [Average] from dbo.Orders
--2. Create a user-defined function which will multiply the given number with 10
	Create function dbo.udf_MultiplyBy10(@number INT)
	Returns INT AS
	BEGIN 
		Return @number * 10 
	END 
	GO
	Select dbo.udf_MultiplyBy10(99)

--3. Use the case statement to check if 100 is less than 200, greater than 200 or equal to 200 and print the corresponding value.

	SELECT
		CASE
		WHEN 100 < 200 THEN 'Less than 200'
		WHEN 100 > 200 THEN 'Greater than 200'
		ELSE 'Equal to 200'
		END AS result;

--4. Using a case statement, find the status of the amount. 
--   Set the status of the amount as high amount, low amount or medium amount based upon the condition.
			SELECT	amount,			
			CASE WHEN amount > 200 THEN 'High Amount'
				 WHEN amount < 150 THEN 'Low Amount'
			ELSE 'Medium Amount' END AS status
			FROM Orders;

--5. Create a user-defined function, to fetch the amount greater than then given input.

	CREATE FUNCTION dbo.udf_getAmountGreaterThan(@amount DECIMAL(10, 2))
	RETURNS TABLE
	AS	
	RETURN
	(
	
		 SELECT amount
				FROM Orders 	 
				WHERE amount > @amount
	)
	GO 
	SELECT  * from dbo.udf_getAmountGreaterThan(100)