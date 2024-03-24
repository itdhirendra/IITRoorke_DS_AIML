--Select * from LOCATION
--Select * from DEPARTMENT
--Select * from JOB
--Select * from EMPLOYEE

--Simple Queries:
--1. List all the employee details. 
	Select * from EMPLOYEE
--2. List all the department details. 
	Select * from DEPARTMENT
--3. List all job details. 
	Select * from JOB
--4. List all the locations. 
	Select * from LOCATION
--5. List out the First Name, Last Name, Salary, Commission for allEmployees. 
	Select FIRST_NAME,LAST_NAME , Salary, COMM [Commission]  from EMPLOYEE
--6. List out the Employee ID, Last Name, Department ID for all employees and alias Employee ID as "ID of the Employee", Last Name as "Name of theEmployee", Department ID as "Dep_id". 
	Select EMPLOYEE_ID [ID of the Employee],LAST_NAME [Name of the Employee] , DEPARTMENT_ID [Dep_id]  from EMPLOYEE
--7. List out the annual salary of the employees with their names only. 
	Select* from employee

--WHERE Condition:
--1. List the details about "Smith". 
	Select * from EMPLOYEE where LAST_NAME = 'SMITH'
--2. List out the employees who are working in department 20. 
	Select * from EMPLOYEE where DEPARTMENT_ID = 20
--3. List out the employees who are earning salaries between 3000and4500. 
	Select * from EMPLOYEE where SALARY between 3000 and 4500
--4. List out the employees who are working in department 10 or 20. 
	Select * from EMPLOYEE where DEPARTMENT_ID in (10,20)
--5. Find out the employees who are not working in department 10 or 30. 
	Select * from EMPLOYEE where DEPARTMENT_ID not in (10,30)
--6. List out the employees whose name starts with 'S'.
	Select * from EMPLOYEE where FIRST_NAME like 'S%'  
--7. List out the employees whose name starts with 'S' and ends with'H'. 
	Select * from EMPLOYEE where FIRST_NAME like 'S%H' 
--8. List out the employees whose name length is 4 and start with 'S'. 
	Select * from EMPLOYEE where len(FIRST_NAME) = 4   and FIRST_NAME like 'S%' 
--9. List out employees who are working in department 10 and draw salaries more than 3500. 
	Select * from EMPLOYEE where DEPARTMENT_ID = 10   and SALARY> 3500 
--10. List out the employees who are not receiving commission. 
		Select * from EMPLOYEE where COMM = 0 

		
--ORDER BY Clause:
--1. List out the Employee ID and Last Name in ascending order based on the Employee ID. 
	Select EMPLOYEE_ID ,LAST_NAME from EMPLOYEE order by EMPLOYEE_ID asc
--2. List out the Employee ID and Name in descending order based onsalary. 
	Select EMPLOYEE_ID , FIRST_NAME +' ' + LAST_NAME from EMPLOYEE order by SALARY desc
--3. List out the employee details according to their Last Name in ascending-order.
	Select*  from EMPLOYEE order by LAST_NAME  asc
--4. List out the employee details according to their Last Name in ascending order and then Department ID in descending order. 
	Select*  from EMPLOYEE order by LAST_NAME  asc,DEPARTMENT_ID desc 

--GROUP BY and HAVING Clause:
--1. How many employees are in different departments in theorganization?
	Select DEPARTMENT_ID , count(*) from EMPLOYEE group by DEPARTMENT_ID
--2. List out the department wise maximum salary, minimum salary andaverage salary of the employees. 
	Select DEPARTMENT_ID , max(SALARY) ,min(SALARY)  ,Avg(SALARY)    from EMPLOYEE group by DEPARTMENT_ID
--3. List out the job wise maximum salary, minimum salary and averagesalary of the employees. 
	Select JOB_ID, max(SALARY) ,min(SALARY)  ,Avg(SALARY)    from EMPLOYEE group by JOB_ID
--4. List out the number of employees who joined each month in ascendingorder.
	Select DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]    from EMPLOYEE group by DATEPART(month,HIRE_DATE) order by 1 
--5. List out the number of employees for each month and year in ascending order based on the year and month. 
	Select DATEPART(YEAR,HIRE_DATE)[Year] , DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]  
		from EMPLOYEE group by DATEPART(YEAR,HIRE_DATE), DATEPART(month,HIRE_DATE) order by [Year], [Month]
--6. List out the Department ID having at least four employees. 
		Select DEPARTMENT_ID , count(*) from EMPLOYEE group by DEPARTMENT_ID having count(*)>4
--7. How many employees joined in the month of January?
		Select DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]    
		from EMPLOYEE group by DATEPART(month,HIRE_DATE) having DATEPART(month,HIRE_DATE) = 1  order by 1 
--8. How many employees joined in the month of January orSeptember?
		Select DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]    
		from EMPLOYEE group by DATEPART(month,HIRE_DATE) having DATEPART(month,HIRE_DATE) in ( 1, 9)  order by 1 
--9. How many employees joined in 1985?
	Select DATEPART(YEAR,HIRE_DATE)[Year]  , count(*) [Joined in month]  
		from EMPLOYEE group by DATEPART(YEAR,HIRE_DATE) having  DATEPART(YEAR,HIRE_DATE) = 1985 
--10. How many employees joined each month in 1985?
	Select DATEPART(YEAR,HIRE_DATE)[Year]  ,DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]  
		from EMPLOYEE group by DATEPART(YEAR,HIRE_DATE),DATEPART(month,HIRE_DATE) 
		having  DATEPART(YEAR,HIRE_DATE) = 1985 

--11. How many employees joined in March 1985?
	Select DATEPART(YEAR,HIRE_DATE)[Year]  ,DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]  
		from EMPLOYEE group by DATEPART(YEAR,HIRE_DATE),DATEPART(month,HIRE_DATE) 
		having  DATEPART(YEAR,HIRE_DATE) = 1985 and DATEPART(month,HIRE_DATE)  = 3 
--12. Which is the Department ID having greater than or equal to 3 employeesjoining in April 1985?
		Select DEPARTMENT_ID ,DATEPART(YEAR,HIRE_DATE)[Year]  ,DATEPART(month,HIRE_DATE)[Month] , count(*) [Joined in month]  
		from EMPLOYEE group by DEPARTMENT_ID, DATEPART(YEAR,HIRE_DATE),DATEPART(month,HIRE_DATE) 
		having  DATEPART(YEAR,HIRE_DATE) = 1985 and DATEPART(month,HIRE_DATE)  = 4 and count(*) >3  
--Joins:
--1. List out employees with their department names. 
	 Select * from EMPLOYEE e
	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
--2. Display employees with their designations. 
	 Select * from EMPLOYEE e
	 inner join  JOB j on j.JOB_ID = e.JOB_ID 
--3. Display the employees with their department names and regional groups. 
		 Select * from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			inner join  LOCATION l on l.Location_Id = d.Location_Id 
--4. How many employees are working in different departments? Displaywithdepartment names. 
			Select d.Name [Department], count(*) [Employee count] from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			 group by d.Name
--5. How many employees are working in the sales department?
		Select d.Name [Department], count(*) [Employee count] from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			 where  d.name = 'sales' 
			 group by d.Name
--6. Which is the department having greater than or equal to 5  employees? Display the department names in ascendingorder. 
	Select d.Name [Department], count(*) [Employee count] from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
		group by d.Name having count(*) >= 5 order by  d.Name
--7. How many jobs are there in the organization? Display with designations.
		Select  j.Designation , count(*)  from EMPLOYEE e
			 inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 group by j.Designation
--8. How many employees are working in "New York"?
		 Select count(*)  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			inner join  LOCATION l on l.Location_Id = d.Location_Id 
			where l.City = 'New York' 
--9. Display the employee details with salary grades. Use conditional statement to create a grade column. 
	Select  * , 
		Case j.Designation   
			when 'PRESIDENT' then 'A'
			when 'MANAGER' then 'B'
			when 'SALES_PERSON' then 'C'
			when 'ANALYST' then 'D'
			ELSE 'E'END  
			[Grade]
			from EMPLOYEE e
			 inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 
--10. List out the number of employees grade wise. Use conditional statement to create a grade column. 
	Select   
		Case j.Designation   
			when 'PRESIDENT' then 'A'
			when 'MANAGER' then 'B'
			when 'SALES_PERSON' then 'C'
			when 'ANALYST' then 'D'
			ELSE 'E'END  
			[Grade]
			, Count(*) [employees]
			from EMPLOYEE e
			 inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 group by j.Designation
--11.Display the employee salary grades and the number of employees between 2000 to 5000 range of salary. 
Select   
		Case j.Designation   
			when 'PRESIDENT' then 'A'
			when 'MANAGER' then 'B'
			when 'SALES_PERSON' then 'C'
			when 'ANALYST' then 'D'
			ELSE 'E'END  
			[Grade]
			, Count(*) [employees]
			from EMPLOYEE e
			 inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where SALARY between 2000 and 5000
			 group by j.Designation
--12. Display all employees in sales or operation departments. 
	Select *  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			 where d.name in ('Sales','Operations')
			 
--SET Operators:
--1. List out the distinct jobs in sales and accounting departments. 
			Select distinct Designation  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='Sales' 
			 union 
			 Select distinct Designation  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='accounting' 
--2. List out all the jobs in sales and accounting departments. 
			Select distinct Designation  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='Sales' 
			 union ALL 
			 Select distinct Designation  from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='accounting'
--3. List out the common jobs in research and accounting departments in ascending order. 
			 Select distinct Designation  from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
				inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='research'
			 intersect  
			 Select distinct Designation  from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where d.name ='accounting' 
			 order by 1 
	 
--Subqueries:
--1. Display the employees list who got the maximum salary.
	 Select *  from EMPLOYEE where SALARY in ( Select max(SALARY)  from EMPLOYEE )
--2. Display the employees who are working in the sales department. 
 
	Select *  from EMPLOYEE where EMPLOYEE_ID in
		(select EMPLOYEE_ID from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
		 
			 where d.name  ='sales' )
--3. Display the employees who are working as 'Clerk'. 
	Select *  from EMPLOYEE where EMPLOYEE_ID in
		(select EMPLOYEE_ID from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where j.Designation  ='Clerk' )
--4. Display the list of employees who are living in "New York". 
	Select *  from EMPLOYEE where EMPLOYEE_ID in
		(select EMPLOYEE_ID from EMPLOYEE e
		 	 inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			inner join  LOCATION l on l.Location_Id = d.Location_Id 
			where l.City = 'New York' )
		  
--5. Find out the number of employees working in the sales department. 
	select count(*) from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 		 
			 where d.name  ='sales'
--6. Update the salaries of employees who are working as clerks on thebasisof 10%. 
	update e set SALARY= SALARY + (SALARY * .01) 
	from EMPLOYEE e
		 		inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  inner join  JOB j on j.JOB_ID = e.JOB_ID 
			 where j.Designation  ='Clerk'
--7. Delete the employees who are working in the accounting department. 
	Delete from EMPLOYEE e
		 	inner join  DEPARTMENT d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
			  where d.name   = 'accounting'
--8. Display the second highest salary drawing employee details. 
	  Select top 1 * from EMPLOYEE where EMPLOYEE_ID not in 
	  ( select top 1 EMPLOYEE_ID from EMPLOYEE order by salary desc ) 
	  order by salary desc
--9. Display the nth highest salary drawing employee details. 
	with CTE As (
		Select * , Dense_Rank() over (order by salary desc) [Rank]   from EMPLOYEE 
		) 
		select * from CTE where [Rank] = 4

--10. List out the employees who earn more than every employee in department 30.
	Select * from EMPLOYEE where salary > (	Select max(salary) from EMPLOYEE where DEPARTMENT_ID = 30  )
--11. List out the employees who earn more than the lowest salary in department.
	Select * from EMPLOYEE e where salary >
			(	Select min(salary) from EMPLOYEE i where i.DEPARTMENT_ID = e.DEPARTMENT_ID  )

 
--12. Find out which department has no employees. 
		Select * from DEPARTMENT d  
		left join  EMPLOYEE e on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
		where e.EMPLOYEE_ID is null 
--13. Find out the employees who earn greater than the average salary for their  department.
	Select * from EMPLOYEE e where salary >
			(	Select avg(salary) from EMPLOYEE i where i.DEPARTMENT_ID = e.DEPARTMENT_ID  )
