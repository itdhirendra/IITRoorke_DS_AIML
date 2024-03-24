  
--1. Download the AdventureWorks database from the following location and
--restore it in your server:
--Location:
--https://github.com/Microsoft/sql-server-samples/releases/tag/adventurewor
--ks
--New Location : https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks2012
--File Name: AdventureWorks2012.bak
--AdventureWorks is a sample database shipped with SQL Server and it can
--be downloaded from the GitHub site. AdventureWorks has replaced
--Northwind and Pubs sample databases that were available in SQL Server
--in 2005. Microsoft keeps updating the sample database as it releases new
--versions.
--2. Restore Backup:
--Follow the below steps to restore a backup of your database using SQL
--Server Management Studio:
--a. Open SQL Server Management Studio and connect to the target
--SQL Server instance
--b. Right-click on the Databases Node and select Restore Database
--c. Select Device and click on the ellipsis (...)
--Contact us: support@intellipaat.com / © Copyright Intellipaat / All rights reserved
--Intel iPaat
--SQL Certification Training
--d. In the dialog box, select Backup devices, click on Add, navigate to
--the database backup in the file system of the server, select the
--backup, and click on OK.
--e. If needed, change the target location for the data and log files in the
--Files pane
--Note: It is a best practice to place the data and log files on different
--drives.
--f. Now, click on OK
--This will initiate the database restore. After it completes, you will have the
--AdventureWorks database installed on your SQL Server instance.
--3. Perform the following with help of the above database:
--a. Get all the details from the person table including email ID, phone number and phone number type
Select * from  [Person].[Person] 
--b. Get the details of the sales header order made in May 2011
Select * from Sales.SalesOrderHeader where datepart(month , OrderDate ) = 5
and datepart(YEAR , OrderDate ) = 2011
--c. Get the details of the sales details order made in the month of May 2011
Select * from Sales.SalesOrderDetail sd (NOLOCK) 
inner join Sales.SalesOrderHeader sh (NOLOCK) on sh.SalesOrderID = sd.SalesOrderID
	where datepart(month , OrderDate ) = 5
	and datepart(YEAR , OrderDate ) = 2011
--d. Get the total sales made in May 2011
Select Sum(SubTotal)[May2011Salestotal] from Sales.SalesOrderHeader where datepart(month , OrderDate ) = 5
and datepart(YEAR , OrderDate ) = 2011
--e. Get the total sales made in the year 2011 by month order by increasing sales
Select   FORMAT( OrderDate ,'MMMM') ,
		Sum(SubTotal)[May2011Salestotal] from Sales.SalesOrderHeader where  
datepart(YEAR , OrderDate ) = 2008
group by  FORMAT( OrderDate ,'MMMM')
order by 2 asc 
--f. Get the total sales made to the customer with FirstName='Gustavo' and LastName ='Achong'
 Select Sum(SubTotal)[TotalSalestoGustavo] from Sales.SalesOrderHeader sh
 inner join  [Sales].[Customer] c on c.CustomerID = sh.CustomerID
 inner join   [Person].[Person] p on p.BusinessEntityID = c.PersonID
 where p.FirstName = 'Gustavo' and LastName ='Achong'

