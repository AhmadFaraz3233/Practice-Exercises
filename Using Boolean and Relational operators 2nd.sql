--SQL Exercises, Practice, Solution - Using Boolean and Relational operators

select * from customer 
where grade > 100;

select * from customer 
where city = New York And grade > 100;

select * from customer 
where city = New York or grade > 100;

select * from customer 
where city = New York or Not grade > 100;

select * from customer 
where NOt (city = New York or grade > 100;)

select orders from customer 
where NOt ((order_date = 2012-09-10 And Salesman_ID = 5005) or Purcahse_amnt >  1000.00);

select salesman_ID, name , city ,commission 
where (commission >0.10% And Commssion < 0.12%);

select orders from customers 
where(purchse_amnt>200 or Not(order_date >= 10th,Feb,2012 And customer_Id <3009);

 select * From customer
 where Not(( order_date ='2012-08-17' or Customer_ID > 3005) And Purchas_amnt < 1000)

select order_no , purchase_amnt (100* purch_amnt) /6000 As "Achieved %", (100* (6000-purch_amt)/6000) As "unAchieved %" from orders
WHERE (100*purch_amt)/6000>50;

select * from emp_details
Where lastname = "Dosni or lastname = "Mardy";

Select * From emp_details
Where Emp_Dept = 47 or Emp_dep = 63;


