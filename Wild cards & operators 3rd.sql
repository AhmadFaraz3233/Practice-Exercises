 -- WildCards and Special operator 
 from the city either Paris or Rome. 
 Select * From Salesman 
 Where City = 'paris' or city ='Rome';

 Select * From Salesman 
 Where City IN ('paris', 'Rome')

 Select salesman_Id , name , city , commission from salesman 
 where NOt CIty IN ('paris','Rome');

 select * From customer
 where emp_ID IN ( 3007, 3008, 300)

Write a SQL statement to find those salesmen with all information who gets the
commission within a range of 0.12 and 0.14. 

select * From Salesman 
Where Commission Between  0.12 And 0.14;

select * From salesman 
where purc_amt Between (500 And 4000)And purch_amnt Not IN( 948.50 And 1983.43)

Select *From salesman 
where name Between 'A' And 'k'; 

Select *From salesman 
where name NOT Between 'A' And 'L' :

select * From Customer
Where cus_name like 'B%';


select * From Customer
Where cus_name like '%n';

select * From test_table
Where cus_name like 'N___I';


select * From test_table
Where cus_name like '%_%' ESCAPE '/';

select * From testable 
where Coulm_1 like '%_/%' ESCAPE '/';

select * From testable 
where Coulm_1 NOt like '%_/%' ESCAPE '/';

select * From testable 
where Coulm_1 like '%/_//%' ESCAPE '/';

select * From testable 
where Coulm_1 NOT like '%/_//%' ESCAPE '/';

select * From testable 
where Coulm_1 like '%/%%' ESCAPE '/';

select * From testable 
where Coulm_1 NOT like '%/%%' ESCAPE '/';

select *From customer 
Where grade is Null;

select *From customer 
Where grade is NOT Null;

select * From customer 
Where lastname like 'D%';




























