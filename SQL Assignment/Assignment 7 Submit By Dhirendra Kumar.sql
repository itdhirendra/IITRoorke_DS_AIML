--Tasks To Be Performed:
--1. Find out the selling cost average for packages developed in Pascal.
	Select AVG(SCOST) [Average Selling Cost] From Software where DEVELOPIN = 'PASCAL'

--2. Display the names and ages of all programmers.
	Select PNAME  ,  datediff(year, DOB, getdate()) Age from Programmer

--3. Display the names of those who have done the DAP Course.
	Select PNAME  from Studies where COURSE = 'DAP'

--4. Display the names and date of birth of all programmers born in January.
		Select PNAME  , DOB   from Programmer where DATEPART(mm,DOB) = 1 

--5. What is the highest number of copies sold by a package?
		Select PNAME , Max(SOLD) [Highest No of Copies Sold] from Software group by PNAME

--6. Display lowest course fee.
	Select Min(COURSE_FEE)[lowest course fee] from Studies  

--7. How many programmers have done the PGDCA Course?
	Select  count(*)[programmers done PGDCA] from Programmer P 
	inner join Studies s on s.pname = p.pname  where  COURSE ='PGDCA' 

 
--8. How much revenue has been earned through sales of packages developed in C?
		Select SUM(SCOST *SOLD ) [Revenue C] from Software where DEVELOPIN ='C'

--9. Display the details of the software developed by Ramesh.
		Select * from Software  where PName = 'Ramesh'

--10. How many programmers studied at Sabhari?
		Select  count(*) [Programmers Studied Sabhari]  from Programmer P 
		inner join Studies s on s.pname = p.pname  where  INSTITUTE = 'Sabhari'
		
--11. Display details of packages whose sales crossed the 2000 mark.
	Select  * from Software P  where SCOST >2000

--12. Display the details of packages for which development costs have been recovered.
		Select  * from Software P  where  SCOST >= DCOST 

--13. What is the cost of the costliest software development in Basic?
	select max(DCost) [costliest development in Basic] from  Software where DEVELOPIN ='Basic'

--14. How many packages have been developed in dBase?
	select count(*) [No of Packages Developed in dBase] from  Software where DEVELOPIN ='dBase'

--15. How many programmers studied in Pragathi?
		Select  count(*) [Programmers Studied in Pragathi] from Programmer P 
		inner join Studies s on s.pname = p.pname  where  INSTITUTE = 'Pragathi'
	
--16. How many programmers paid 5000 to 10000 for their course?
		Select  count(*) [Programmers ] from Programmer P 
		inner join Studies s on s.pname = p.pname  where  COURSE_FEE between 5000 and  10000  
 

--17. What is the average course fee?
	Select AVG(COURSE_FEE) from Studies

--18. Display the details of the programmers knowing C.
	SELECT * FROM programmer WHERE (PROF1='C' OR PROF2='C')
--19. How many programmers know either COBOL or Pascal?
	 SELECT count(*) FROM programmer WHERE (PROF1 in ('COBOL','Pascal') OR PROF2 in  ('COBOL','Pascal'))
--20. How many programmers don’t know Pascal and C?
	 SELECT count(*) FROM programmer WHERE (PROF1 not in ('C','Pascal') and PROF2 not in  ('C','Pascal'))
	 
--21. How old is the oldest male programmer?
	   Select MAX(DATEDIFF(YY,DOB,GETDATE()))  from programmer where GENDER = 'M'

--22. What is the average age of female programmers?
	   Select AVG(DATEDIFF(YY,DOB,GETDATE()))  from programmer where GENDER = 'F'

--23. Calculate the experience in years for each programmer and display with their names in descending order.
	Select PNAME , DATEDIFF(YY,DOJ,GETDATE()) [Year of Exprience]  from programmer order by [Year of Exprience] 

--24. Who are the programmers who celebrate their birthdays during the current month?
		SELECT PNAME FROM programmer WHERE MONTH(DOB)=MONTH(GETDATE())

--25. How many female programmers are there?
		SELECT COUNT(*) FROM programmer WHERE GENDER='F'
--26. What are the languages studied by male programmers?
	SELECT PNAME,PROF1,PROF2 FROM programmer WHERE GENDER='M'

--27. What is the average salary?
	SELECT AVG(SALARY) FROM programmer
--28. How many people draw a salary between 2000 to 4000?
	SELECT COUNT(*) FROM programmer WHERE SALARY BETWEEN 2000 AND 4000
--29. Display the details of those who don’t know Clipper, COBOL or Pascal.
		 SELECT *  FROM programmer WHERE (PROF1 not in ('Clipper','COBOL','Pascal') 
												and PROF2 not in ('Clipper','COBOL','Pascal'))

--30. Display the cost of packages developed by each programmer.
		SELECT PNAME, SUM(DCOST) AS TotalPackageCost FROM software GROUP BY PNAME

--31. Display the sales value of the packages developed by each programmer.
		SELECT PNAME, SUM(SCOST*SOLD) AS TotalSales FROM software GROUP BY PNAME

--32. Display the number of packages sold by each programmer.
	SELECT PNAME, sum(SOLD) TotalSold FROM software GROUP BY PNAME

--33. Display the sales cost of the packages developed by each programmer language wise.
		SELECT DEVELOPIN, SUM(SCOST) AS	TotalbyLang FROM software GROUP BY DEVELOPIN
--34. Display each language name with the average development cost,average selling cost and average price per copy.
		SELECT DEVELOPIN, AVG(DCOST) AS AvgDevelppmentCost, AVG(SCOST) AS AvgsellingCost 
				,IIF(SUM(SOLD)<>0,sum(SCOST)/sum(SOLD),0) AS AvgPrCopy
			FROM software GROUP BY DEVELOPIN
--35. Display each programmer’s name and the costliest and cheapest packages developed by him or her.
	SELECT PNAME, MAX(DCOST) AS Costliest, MIN(DCOST) AS Cheapest FROM software	GROUP BY PNAME

--36. Display each institute’s name with the number of courses and the average cost per course.
		SELECT INSTITUTE, COUNT(COURSE) AS NumCourses, AVG(COURSE_FEE) AS AvgCostbyCourse FROM studies GROUP BY INSTITUTE

--37. Display each institute’s name with the number of students.
	Select INSTITUTE , Count(*) [NoofStudents]  from Studies  group by INSTITUTE

--38. Display names of male and female programmers along with their gender.
	Select PNAME , GENDER   from Programmer 
	
--39. Display the name of programmers and their packages.
	Select PNAME , SALARY   from Programmer 

--40. Display the number of packages in each language except C and C++.
		SELECT DEVELOPIN , count(*) [NoofPackages] FROM software where DEVELOPIN not in ('C','C++') group by DEVELOPIN

--41. Display the number of packages in each language for which development cost is less than 1000.
	SELECT DEVELOPIN , count(*) [NoofPackages] FROM software where DCOST <1000 group by DEVELOPIN

--42. Display the average difference between SCOST and DCOST for each package.
		SELECT TITLE, AVG(DCOST) AS AVGDCOST, AVG(SCOST) AS AVGSCOST, AVG(DCOST)-AVG(SCOST) AS AVGCOSTDIFF
		FROM software GROUP BY TITLE

--43. Display the total SCOST, DCOST and the amount to be recovered for each programmer whose cost has not yet been recovered.
	SELECT PNAME, SUM(DCOST) AS SumDCOST, SUM(SCOST*SOLD) AS SumSCOST, SUM(SCOST*SOLD)-SUM(DCOST) AS SumDiffCOST 
				FROM software GROUP BY PNAME HAVING SUM(SCOST*SOLD)<SUM(DCOST)

--44. Display the highest, lowest and average salaries for those earning more than 2000.
	Select max(SALARY) [HighestSalary],Min(SALARY)[lowestSalary],Avg(SALARY)[AverageSalary]   from Programmer where SALARY> 2000

--45. Who is the highest paid C programmer?
		SELECT top 1 *  FROM programmer WHERE ( PROF1 = 'C' OR PROF2 ='C') ORDER BY SALARY DESC

--46. Who is the highest paid female COBOL programmer?
	SELECT top 1 *  FROM programmer WHERE  ( PROF1 = 'COBOL' OR PROF2 ='COBOL') and GENDER = 'F'  ORDER BY SALARY DESC

--47. Display the names of the highest paid programmers for each language.
		;With HighestPaidProgramers as (
			Select *, DENSE_RANK() Over (PARTITION BY PROF1  order by Salary desc) [DenseRank]   from programmer 			 
		)
		select * from HighestPaidProgramers where [DenseRank] = 1
		------------------------------ Considering both the PROF1 & PROF2
		;With HighestPaidProgramers as (
		Select *  , DENSE_RANK() Over (PARTITION BY [PROF]  order by Salary desc) [DenseRank]
			from 
			(
			Select PNAME ,PROF1 [PROF], SALARY   from programmer 
			union all
			Select PNAME ,PROF2 [PROF], SALARY  from programmer 
			) as Temp
		)
		select * from HighestPaidProgramers where [DenseRank] = 1


--48. Who is the least experienced programmer?
	select top 1 * from programmer order by DOJ desc
	 	
--49. Who is the most experienced male programmer knowing PASCAL?
		select top 1 * from programmer  where gender = 'M' and (PROF1 = 'PASCAL' or PROF2='PASCAL') order by DOJ  
		 
--50. Which language is known by only one programmer?

	Select [PROF] ,Sum([Count])  from (
					Select PROF1  [PROF], Count(*) [Count] from programmer group by PROF1
					union all  	
					Select PROF2 [PROF], Count(*) [Count] from programmer group by PROF2
		) As Temp
			group by [PROF] having Sum([Count])= 1  
		  

--51. Who is the above programmer referred in 50?
	Select *   from programmer where  DATEDIFF(YY,DOB,GETDATE()) >= 50 

--52. Who is the youngest programmer knowing dBase?
 		select top 1 * from programmer where (PROF1 = 'dBase' or PROF2 ='dBase' ) order by DOJ desc
		 
--53. Which female programmer earning more than 3000 does not know C,C++, Oracle or dBase?
	select  * from programmer where GENDER = 'F'  and salary > 300 and
					(PROF1 not in ('C','C++','Oracle' ,'dBase') and PROF2 not in ('C','C++','Oracle' ,'dBase')) 

--54. Which institute has the most number of students?
		Select  INSTITUTE , count(PNAME) [studentCount] from Studies  group by INSTITUTE  order by [studentCount] desc 

--55. What is the costliest course?
	Select top 1  COURSE , max(COURSE_FEE) [Fee]  from Studies  group by COURSE  order by [Fee] desc 
         -------------other way 
 	Select * from  (Select   COURSE , max(COURSE_FEE) [Fee] , 
				 RANK() Over ( order by max(COURSE_FEE) desc) [Rank]
	from Studies   
	Group by COURSE) as Temp
	where [Rank] = 1  

--56. Which course has been done by the most number of students?

	Select * from  (Select   COURSE , count(PNAME) [StudentCount] , 
				 RANK() Over ( order by count(PNAME)  desc) [Rank]
	from Studies   
	Group by COURSE) as Temp
	where [Rank] = 1  
	
--57. Which institute conducts the costliest course?
		Select * from  (Select   INSTITUTE , max(COURSE_FEE) [StudentCount] , 
				 RANK() Over ( order by max(COURSE_FEE)  desc) [Rank]
	from Studies   
	Group by INSTITUTE) as Temp
	where [Rank] = 1  

--58. Display the name of the institute and the course which has below average course fee.
	SELECT INSTITUTE, COURSE, COURSE_FEE FROM Studies
	WHERE COURSE_FEE< (SELECT AVG(COURSE_FEE) FROM Studies)

--59. Display the names of the courses whose fees are within 1000 (+ or -) of the average fee.
	SELECT INSTITUTE, COURSE, COURSE_FEE FROM Studies s
	outer apply (SELECT AVG(COURSE_FEE) AVGFee FROM Studies ) avgFee
	WHERE COURSE_FEE between avgFee.avgFee - 1000 and avgFee.avgFee + 1000

--60. Which package has the highest development cost?
	Select top 1 TITLE , DCOST from Software order by DCOST desc

--61. Which course has below average number of students?

	Declare @AVGCNT TABLE  (CRS VARCHAR(20), CNT INT)

	INSERT INTO @AVGCNT
	SELECT COURSE, COUNT(PNAME) FROM studies GROUP BY COURSE

	SELECT CRS,CNT FROM @AVGCNT WHERE CNT <=(SELECT AVG(CNT) FROM @AVGCNT)
 

--62. Which package has the lowest selling cost?
		SELECT PNAME,TITLE, SCOST FROM software WHERE SCOST=(SELECT MIN(SCOST) FROM Software)

--63. Who developed the package that has sold the least number of copies?
		SELECT PNAME,TITLE, SOLD FROM software WHERE SOLD=(SELECT MIN(SOLD) FROM Software)

--64. Which language has been used to develop the package which has the highest sales amount?
		SELECT top 1 DEVELOPIN,MAX(SCOST*SOLD) [Highest sales amount]  FROM software group by DEVELOPIN 
		order by [Highest sales amount]  desc 

--65. How many copies of the package that has the least difference between development and selling cost were sold?
	SELECT Top 1 TITLE,SOLD,DCOST - (SCOST*SOLD)   [diffrence]  
		FROM software where  (SCOST*SOLD) > DCOST order by [diffrence]desc 
 
--66. Which is the costliest package developed in Pascal?
		SELECT top 1  TITLE, DCOST FROM Software WHERE DEVELOPIN='PASCAL'   order by [DCOST] desc 

--67. Which language was used to develop the most number of packages?
		SELECT top 1 DEVELOPIN  FROM Software 
		group by DEVELOPIN order by count(*)  desc 

--68. Which programmer has developed the highest number of packages?
		Select top 1  PNAME   from Software 
		group by PNAME order by count(*)  desc 

--69. Who is the author of the costliest package?
		Select  top 1 PNAME    from Software 
		group by PNAME order by sum(DCOST) desc 

--70. Display the names of the packages which have sold less than the average number of copies.
	
	SELECT TITLE, SOLD FROM Software  
	where SOLD <= (Select avg(sold) from Software ) 
	
--71. Who are the authors of the packages which have recovered more than double the development cost?
		SELECT PNAME,sum(DCOST) [DeliveryCost], SUM(SCOST*SOLD ) [TotalRecoveryCost] FROM Software
		  group by PNAME having  SUM(SCOST*SOLD ) >=sum(DCOST)*2  

--72. Display the programmer names and the cheapest packages developed by them in each language.

	SELECT
    p.PNAME AS ProgrammerName,
    s.TITLE AS CheapestPackage,
    s.DEVELOPIN AS Language,
    s.SCOST AS CheapestPackageCost
FROM
    programmer p
inner JOIN (
    SELECT
        PNAME,
        DEVELOPIN,
        MIN(SCOST) AS MinPackageCost
    FROM
        software
    GROUP BY
        PNAME, DEVELOPIN
) AS min_packages ON p.PNAME = min_packages.PNAME
Inner JOIN software s ON p.PNAME = s.PNAME AND s.DEVELOPIN = min_packages.DEVELOPIN 
AND s.SCOST = min_packages.MinPackageCost;

--73. Display the language used by each programmer to develop the highest selling and lowest selling package.

SELECT PNAME, DEVELOPIN,SOLD, 'HIGHEST' FROM Software WHERE SOLD IN (SELECT MAX(SOLD) FROM Software)
UNION 
SELECT PNAME, DEVELOPIN,SOLD, 'LOWEST' FROM Software WHERE SOLD IN (SELECT MIN(SOLD) FROM Software)
order by 3 desc

--74. Who is the youngest male programmer born in 1965?

SELECT top 1 PNAME, DOB FROM programmer WHERE year(DOB)=1965 AND GENDER='M'  order by DOB Desc 
 ---------Another way
 SELECT PNAME, DOB FROM programmer p1 WHERE  year(DOB)=1965 AND GENDER='M'
				and DATEDIFF(DD,DOB,GETDATE()) =(SELECT MIN(DATEDIFF(DD,DOB,GETDATE())) FROM Programmer p2 
						WHERE  year(DOB)=1965 AND GENDER='M' )

--75. Who is the oldest female programmer who joined in 1992?

SELECT top 1 PNAME, DOB FROM programmer WHERE year(DOJ)=1992 AND GENDER='F'  order by DOB asc 
 ---------Another way
 SELECT PNAME, DOB FROM programmer p1 WHERE  year(DOJ)=1992 AND GENDER='F'
				and DATEDIFF(DD,DOB,GETDATE()) =(SELECT MAX(DATEDIFF(DD,DOB,GETDATE())) FROM Programmer p2 
						WHERE  year(DOJ)=1992 AND GENDER='F' )
 
--76. In which year was the most number of programmers born?
	  select top 1 year(DOB) [Year] from programmer group by year(DOB)  order by Count(*)   desc 
	
--77. In which month did the most number of programmers join?
		select top 1 DATENAME( month,DOJ) [Month] from programmer group by DATENAME( month,DOJ) order by Count(*)   desc 
--78. In which language are most of the programmer’s proficient?
 
	;With  Programersproficient as (
		Select [PROF] , SUM([Count]) [Total]
			from 
			(
			Select  PROF1 [PROF], COUNT(*) [Count]  from programmer  group by PROF1
			union all
			Select  PROF2 [PROF], COUNT(*) [Count] from programmer group by PROF2
			) as Temp group by [PROF] 
		)
		select * from Programersproficient where [Total] = (select max([Total]) from Programersproficient )

 

--79. Who are the male programmers earning below the average salary of female programmers?
	Select * from programmer where GENDER = 'M' and SALARY < (	Select Avg(SALARY) from programmer where GENDER = 'F' )

--80. Who are the female programmers earning more than the highest paid?
	Select * from programmer where GENDER = 'F' and SALARY > (	Select Max(SALARY) from programmer  where GENDER = 'M'   )

--81. Which language has been stated as the proficiency by most of the programmers?

	;With  Programersproficient as (
		Select [PROF] , SUM([Count]) [Total]
			from 
			(
			Select  PROF1 [PROF], COUNT(*) [Count]  from programmer  group by PROF1
			union all
			Select  PROF2 [PROF], COUNT(*) [Count] from programmer group by PROF2
			) as Temp group by [PROF] 
		)
		select * from Programersproficient where [Total] = (select max([Total]) from Programersproficient )

		--------------Another way 

		Declare  @PCNT TABLE (PR VARCHAR(20), CNT INT)
		Declare  @PsCNT TABLE (PRs VARCHAR(20), sCNT INT)

		INSERT INTO @PCNT
		SELECT PROF1, COUNT(PROF1) FROM programmer GROUP BY PROF1 UNION ALL
		SELECT PROF2, COUNT(PROF2) FROM programmer GROUP BY PROF2

		INSERT INTO @PsCNT
		SELECT PR, SUM(CNT) FROM @PCNT GROUP BY PR

		SELECT PRs, sCNT FROM @PsCNT WHERE sCNT = (SELECT MAX(sCNT) FROM @PsCNT)

--82. Display the details of those who are drawing the same salary.
	SELECT   A.PNAME, A.SALARY FROM Programmer A
		INNER JOIN PROGRAMMER B ON A.SALARY= B.SALARY AND A.PNAME<>B.PNAME
	ORDER BY A.SALARY

--83. Display the details of the software developed by the male programmers earning more than 3000.
	SELECT s.* FROM software s
	inner join programmer p (nolock) on p.PNAME = s.PNAME
	 WHERE SALARY>3000 AND GENDER='M' 
 
--84. Display the details of the packages developed in Pascal by the female programmers.
	SELECT  S.* FROM software s
	inner join programmer p (nolock) on p.PNAME = s.PNAME
	 WHERE  GENDER='F' AND DEVELOPIN='PASCAL'

--85. Display the details of the programmers who joined before 1990.
 
	SELECT * FROM Programmer WHERE YEAR(DOJ)<1990
 
--86. Display the details of the software developed in C by the female programmers at Pragathi.
		SELECT SW.*,P.GENDER,ST.INSTITUTE FROM studies  ST
		inner join software SW on ST.PNAME=SW.PNAME 
		inner join programmer P on P.PNAME=SW.PNAME 
		WHERE  GENDER='F' AND INSTITUTE='PRAGATHI' AND DEVELOPIN='C'


--87. Display the number of packages, number of copies sold and sales value of each programmer institute wise.

		SELECT INSTITUTE, COUNT(SW.TITLE) AS PKGCNT, COUNT(SW.SOLD)
		AS SALESCNT, SUM(SCOST*SOLD) AS SALVAL
		FROM studies  ST
		inner join software SW on ST.PNAME=SW.PNAME 
		inner join programmer P on P.PNAME=SW.PNAME 
		WHERE SW.PNAME=ST.PNAME
		GROUP BY INSTITUTE

--88. Display the details of the software developed in dBase by male programmers who belong to the institute in
		--which the most number of programmers studied.
		Declare  @INST TABLE (INS VARCHAR(20), CNT INT)
		INSERT INTO @INST
		SELECT INSTITUTE, COUNT(PNAME) FROM studies GROUP BY INSTITUTE
		 
		SELECT DISTINCT SW.* FROM software AS SW, programmer AS PG, studies AS ST, @INST
		WHERE DEVELOPIN='DBASE' AND GENDER='M' AND SW.PNAME = PG.PNAME 
		AND INSTITUTE = INS AND CNT= (SELECT MAX(CNT) FROM @INST)

 
--89. Display the details of the software developed by the male programmers born before 1965 and female programmers born after 1975.

	Select * from programmer where GENDER = 'M' and Year(DOB) < 1965
	union all
	Select * from programmer where GENDER = 'F'and Year(DOB) > 1975

--90. Display the details of the software that has been developed in the language which is neither the first
			---nor the second proficiency of the programmers.
			
		SELECT SW.*,PG.PROF1,PG.PROF2 from Software AS SW
		inner join programmer AS PG on   PG.PNAME = SW.PNAME 
		WHERE PG.PROF1 <> SW.DEVELOPIN AND PG.PROF2 <> SW.DEVELOPIN 

--91. Display the details of the software developed by the male students at Sabhari.
		SELECT SW.*,PG.PROF1,PG.PROF2 from Software AS SW
		inner join programmer AS PG on   PG.PNAME = SW.PNAME 
		where PG.GENDER = 'M'
--92. Display the names of the programmers who have not developed any packages.
		SELECT PG.*  from programmer AS PG 
		left join Software AS SW  on   PG.PNAME = SW.PNAME 
		where  SW.PNAME  is null 

--93. What is the total cost of the software developed by the programmers of Apple?
		SELECT SUM(DCOST) [DevelopmentCost] , SUM(SCOST * SOLD)[SelleingCost] FROM Software s
		inner join studies st on  s.PNAME=st.PNAME
		WHERE   INSTITUTE='APPLE'

--94. Who are the programmers who joined on the same day?
	SELECT   A.PNAME, A.DOJ  FROM Programmer A
		INNER JOIN PROGRAMMER B ON  A.DOJ= B.DOJ AND A.PNAME<>B.PNAME
	ORDER BY A.DOJ

--95. Who are the programmers who have the same Prof2?
	SELECT   A.PNAME, A.PROF2  FROM Programmer A
		INNER JOIN PROGRAMMER B ON  A.PROF2= B.PROF2 AND A.PNAME<>B.PNAME
	ORDER BY A.PROF2

--96. Display the total sales value of the software institute wise.
	SELECT INSTITUTE , SUM(SCOST * SOLD)[SelleingCost] FROM Software s
		inner join studies st on  s.PNAME=st.PNAME
		group by INSTITUTE

--97. In which institute does the person who developed the costliest package study?
	SELECT INSTITUTE ,st.PNAME , SUM(SCOST * SOLD)[SelleingCost] FROM Software s
		inner join studies st on  s.PNAME=st.PNAME
		where   DCOST= (SELECT MAX(DCOST) FROM software) 
		group by INSTITUTE,st.PNAME

--98. Which language listed in Prof1, Prof2 has not been used to develop any package?

	Select [PROF] from 
			(
					Select  PROF1 [PROF]   from programmer 
					union all			  
					Select  PROF2 [PROF]  from programmer  
			) as Temp  
			where [PROF] not in (select DEVELOPIN from Software )

--99. How much does the person who developed the highest selling package earn and what course did he/she undergo?

	SELECT SW.PNAME, COURSE, SALARY FROM studies AS ST,software AS SW, programmer AS PG
	WHERE ST.PNAME = SW.PNAME AND ST.PNAME=PG.PNAME
	AND SOLD= (SELECT MAX(SOLD) FROM software)

--100. What is the average salary for those whose software sales is more than 50,000?
	Select avg(Salary) from Programmer p
	inner join Software s on p .PNAME=s.PNAME  
	where  ( SOLD*SCOST )>50000;

--101. How many packages were developed by students who studied in institutes that charge the lowest course fee?
		SELECT PNAME, COUNT(TITLE) FROM software WHERE PNAME IN
		(
				SELECT PNAME FROM studies WHERE INSTITUTE =
					(
					SELECT DISTINCT INSTITUTE FROM studies WHERE COURSE_FEE = (SELECT MIN(COURSE_FEE) FROM Studies)
					)
		)
		GROUP BY PNAME

--102. How many packages were developed by the person who developed the cheapest package? Where did he/she study?
		SELECT TG.*, ST.INSTITUTE FROM studies AS ST 
		INNER JOIN 
				(
				SELECT SW.PNAME, COUNT(TITLE) AS SWCNT  		
				FROM software AS SW 
				WHERE SW.PNAME = (SELECT PNAME FROM software WHERE DCOST = (SELECT MIN(DCOST) FROM software)) 
				GROUP BY SW.PNAME
				) AS TG	ON ST.PNAME= TG.PNAME
--103. How many packages were developed by female programmers earning more than the highest paid male programmer?

	 SELECT COUNT(TITLE) from Programmer p
	 inner join Software s on s.PNAME=p.PNAME
	WHERE    GENDER='F'AND SALARY>(SELECT MAX(SALARY) FROM programmer WHERE GENDER='M')

--104. How many packages are developed by the most experienced programmers from BDPS?
	 SELECT COUNT(TITLE) from Programmer p
	 inner join Software s on s.PNAME=p.PNAME
	WHERE p.PNAME in (
		Select top 1   p.PNAME  from studies st
		inner join Programmer p on p.PNAME = st.PNAME where st.INSTITUTE = 'BDPS'
		order by DOJ
	)     

--105. List the programmers (from the software table) and the institutes they studied at.
		Select   s.PNAME , st.INSTITUTE  from studies st
		inner join Software s on s.PNAME = st.PNAME  group by  s.PNAME , st.INSTITUTE

--106. List each PROF with the number of programmers having that PROF and the number of the packages in that PROF.
		SELECT p.PROF1, p.PROF2, COUNT(DISTINCT p.PNAME) AS num_programmers, COUNT(s.PNAME) AS num_packages
		FROM programmer p
		LEFT JOIN software s ON p.PNAME = s.PNAME
		GROUP BY p.PROF1, p.PROF2

--107. List the programmer names (from the programmer table) and the number of packages each has developed.
		Select p.PNAME , sd.[NoPackagDevelop] from   programmer p 
		outer apply (select count(*) [NoPackagDevelop] from software s where p.PNAME= s.PNAME) sd
