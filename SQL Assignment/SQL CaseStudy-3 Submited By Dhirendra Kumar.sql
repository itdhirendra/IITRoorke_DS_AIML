--Problem Statement:
--You are the database developer of an international bank. You are responsible for
--managing the bank’s database. You want to use the data to answer a few
--questions about your customers regarding withdrawal, deposit and so on,
--especially about the transaction amount on a particular date across various
--regions of the world. Perform SQL queries to get the key insights of a customer.

--Dataset:
--The 3 key datasets for this case study are:
--a. Continent: The Continent table has two attributes i.e., region_id and
--region_name, where region_name consists of different continents such as
--Asia, Europe, Africa etc., assigned with the unique region id.
--b. Customers: The Customers table has four attributes named customer_id,
--region_id, start_date and end_date which consists of 3500 records.
--c. Transaction: Finally, the Transaction table contains around 5850 records
--and has four attributes named customer_id, txn_date, txn_type and
--txn_amount.

--Select * from Continent
--Select * from Customers
--Select * from [Transaction]

--1. Display the count of customers in each region who have done the transaction in the year 2020.
	Select r.region_name , count(distinct c.customer_id) [Coustomercount]   from Customers c
	inner join Continent r on c.region_id = r.region_id
	inner join [Transaction] t on c.customer_id = t.customer_id 
	where datepart(year,txn_date) =2020 group by r.region_name
--2. Display the maximum and minimum transaction amount of each transaction type.
	select txn_type, min(txn_amount) [Min Amount], max(txn_amount)[Max Amount] from [Transaction]
	group by txn_type
--3. Display the customer id, region name and transaction amount where
	--transaction type is deposit and transaction amount > 2000.
		Select c.customer_id , r.region_name ,txn_amount     from Customers c
	inner join Continent r on c.region_id = r.region_id
	inner join [Transaction] t on c.customer_id = t.customer_id 
	where  txn_amount > 2000 and txn_type = 'deposit' 
--4. Find duplicate records in the Customer table.
		select customer_id , count(*) [Duplicate count] from Customers group by customer_id having count(*) > 1 
		
--5. Display the customer id, region name, transaction type and transaction
	--amount for the minimum transaction amount in deposit.
		Select top 1 c.customer_id , r.region_name,txn_type ,txn_amount    from Customers c
	inner join Continent r on c.region_id = r.region_id
	inner join [Transaction] t on c.customer_id = t.customer_id 
	where    txn_type = 'deposit'  
   order by txn_amount asc 

--6. Create a stored procedure to display details of customers in the
--Transaction table where the transaction date is greater than Jun 2020.
	if exists (Select * from sysobjects where name = 'usp_GetCustomerdetails' and type = 'p')
	Begin 
		drop procedure usp_GetCustomerdetails 
	END 
	go
	Create proc usp_GetCustomerdetails 
	as
	BEGIN 
		Select *   from Customers c	 
		inner join [Transaction] t on c.customer_id = t.customer_id 
		where datepart(year,txn_date) >=2020 and datepart(month,txn_date) >=6
	end 
	go 
	exec usp_GetCustomerdetails 

--7. Create a stored procedure to insert a record in the Continent table.
	if exists (Select * from sysobjects where name = 'usp_InsertContinent' and type = 'p')
	Begin 
		drop procedure usp_InsertContinent 
	END 
	go
	Create proc usp_InsertContinent(@region_id INT,   @region_name varchar(256)) 
	as
	BEGIN 
		if Not exists (Select * from continent where region_name = @region_name  )
		begin 
			insert into continent (region_id, region_name)
			values (@region_id,@region_name )
		end 
		else 
		begin 
			print ('Region already exists')
		end 
	end 
	go 
	exec usp_InsertContinent 6 , 'EU' 
--8. Create a stored procedure to display the details of transactions that happened on a specific day.
if exists (Select * from sysobjects where name = 'usp_GetTransactionDetailsByDate' and type = 'p')
	Begin 
		drop procedure usp_GetTransactionDetailsByDate 
	END 
	go
	Create proc usp_GetTransactionDetailsByDate(@txn_Date date ) 
	as
	BEGIN 
		 select * from [transaction] where  txn_date = @txn_Date
	end 
	go 
	exec usp_GetTransactionDetailsByDate '2020-01-18'

--9. Create a user defined function to add 10% of the transaction amount in a table.
	if exists (Select * from sysobjects where name = 'ufn_IncreaseTransactionAmtby10per' and type = 'fn')
	Begin 
		drop function ufn_IncreaseTransactionAmtby10per 
	END 
	go
	Create function ufn_IncreaseTransactionAmtby10per(@txn_Amount  int ) 
	returns decimal(18,2) 
	As
	Begin 
		 select @txn_Amount  = @txn_Amount + @txn_Amount* .1  
		 return @txn_Amount
	End 
	go 
	select * , dbo.ufn_IncreaseTransactionAmtby10per (txn_Amount) [IncreasedAmount ] from [transaction]  
--10. Create a user defined function to find the total transaction amount for a given transaction type.
	if exists (Select * from sysobjects where name = 'ufn_TotalTransactionAmtByTranType' and type = 'fn')
	Begin 
		drop function ufn_TotalTransactionAmtByTranType 
	END 
	go
	Create function ufn_TotalTransactionAmtByTranType(@TransactionType  varchar(30) ) 
	returns decimal(18,2) 
	As
	Begin 
		 
		 return  (Select sum(txn_Amount) from [transaction] where txn_type = @TransactionType)
	End 
	go 
	select dbo.ufn_TotalTransactionAmtByTranType('deposit') 
--11. Create a table value function which comprises the columns customer_id,
	--region_id ,txn_date , txn_type , txn_amount which will retrieve data from the above table.
	if exists (Select * from sysobjects where name = 'ufn_CustomerTransDetails' and type = 'IF')
	Begin 
		drop function ufn_CustomerTransDetails 
	END 
	go
	Create function ufn_CustomerTransDetails()
	RETURNS TABLE
	AS
	Return(
	Select   c.customer_id ,r.region_ID  ,txn_date , txn_type ,txn_amount   
	from Customers c
	inner join Continent r on c.region_id = r.region_id
	inner join [Transaction] t on c.customer_id = t.customer_id 	
	)
	go 
	select * from ufn_CustomerTransDetails ()
--12. Create a TRY...CATCH block to print a region id and region name in a single column.
	begin try 
		Select region_id from Continent
		union 
		Select region_name from Continent
	end Try 
	begin catch
	   print 'Exception occur'
	   SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage;  
	end catch
--13. Create a TRY...CATCH block to insert a value in the Continent table.
	begin try 
		insert into continent (region_id, region_name)
			values ('Test','Test')
	end Try 
	begin catch
	   print 'Exception occur'
	   SELECT   
        ERROR_NUMBER() AS ErrorNumber  
       ,ERROR_MESSAGE() AS ErrorMessage;  
	end catch
--14. Create a trigger to prevent deleting a table in a database.
	 
	 
	CREATE TRIGGER trg_preventDropTable ON DATABASE 
	FOR DROP_TABLE 
	AS 
	   PRINT 'You must disable Trigger "trg_preventDropTable" to drop table!' 
	 ROLLBACK
	 GO
	 create table temptest (name varchar(10) )
	 GO 
	 Drop table temptest
		 
--15. Create a trigger to audit the data in a table.
		CREATE TABLE [dbo].[Continent_Audit](
			[Continent_Audit_ID]  [INT] primary key identity(1,1),
			[region_id] [tinyint] NOT NULL,
			[region_name] [nvarchar](50) NOT NULL,
			DateUpdated DATETIME,
			UpdatedBy NVARCHAR(256),
			Statement CHAR(1)
		) ON [PRIMARY]
		GO 
		CREATE TRIGGER dbo.tr_Continent ON dbo.Continent
			FOR INSERT, UPDATE, DELETE
			AS
			SET NOCOUNT ON

			IF (SELECT COUNT(*) FROM inserted) > 0
			BEGIN
				IF (SELECT COUNT(*) FROM deleted) > 0
				BEGIN
					-- update
					INSERT INTO [Continent_Audit]
					SELECT  t1.region_id,t1.region_name  , GETDATE(), SYSTEM_USER, 'U'
					FROM    deleted t1 
					Inner JOIN inserted t2 ON        t1.[region_id] = t2.[region_id]
					JOIN    Continent t3 ON  t1.[region_id] = t3.[region_id]
				END
				ELSE
				BEGIN
					-- insert
					INSERT INTO [Continent_Audit]
					SELECT  region_id,region_name  , GETDATE(), SYSTEM_USER, 'I'
					FROM  inserted
				END
			END
			ELSE
			BEGIN
			 --delete
				INSERT INTO [Continent_Audit]
				SELECT  region_id,region_name  , GETDATE(), SYSTEM_USER, 'D'
				FROM  deleted
			END
			GO 

			Delete from Continent where region_name = 'EU'


--16. Create a trigger to prevent login of the same user id in multiple pages.
		SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

	CREATE trigger [logon_rest] on all server for logon
	as begin
			declare @Program varchar(128)
			declare @systemname varchar(128)
			select @Program =PROGRAM_NAME,@systemname=HOST_NAME from sys.dm_exec_sessions as A
			where a.session_id=@@SPID
			if ORIGINAL_LOGIN() in('sa') /**Login For Which Access Need to restricted **/
			and @Program like'%Management%studio' /** Program via access restricted **/		 
	begin
		Raiserror ('Already login ',1,1)
	rollback;
	end
	end;
	GO
	SET ANSI_NULLS OFF
	GO
	SET QUOTED_IDENTIFIER OFF
	GO
	ENABLE TRIGGER [logon_rest] ON ALL SERVER
	GO
--17. Display top n customers on the basis of transaction type.
	with cte as (
		Select c.customer_id
		,region_id
		,start_date
		,end_date
		,txn_date
		,txn_type
		,txn_amount
		,  row_number() OVER (PARTITION BY t.txn_type ORDER BY t.txn_amount DESC) [Rank]
		from Customers c	 
		inner join [Transaction] t on c.customer_id = t.customer_id 	)
	select * from cte where [Rank] <5 
--18. Create a pivot table to display the total purchase, withdrawal and deposit for all the customers.	SELECT customer_id, ' Total' AS Total_Amount,   
			purchase,withdrawal,deposit
	FROM  
	(		Select c.customer_id , txn_type,  txn_amount		from Customers c	 
		inner join [Transaction] t on c.customer_id = t.customer_id 
	) as SourceTable  
	PIVOT  
	(  
	  SUM(txn_amount)  
	  FOR txn_type IN ( purchase,withdrawal,deposit)  	  
	) AS PivotTable
	order by 1 

 