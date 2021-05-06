-- Agrigate function 
select Sum(purc_amt) from orders;

select AVg(purc_amt) from orders;

select Count(Distinct salesman_ID) as total_salesman from orders

select Count(*) from customers

select Count(All grades)  From Cusrtomer 

select Max(purch_amt) from customer;

select Min(purch_amt) from customer;

select city, Max(grade) From customer
group by city 

select Customer_ID , Max (Purch_amnt) From Customer
group by customer_ID;

select order_date, Customer_ID , Max (Purch_amnt) From Customer
group by customer_ID And order_date;

select salesman_ID , Max (Purch_amnt) From orders
Where order_date = '2012-08-17'
group by salesman_ID;


select order_date ,customers_ID , Max (Purch_amnt) From orders
group by oder_date customers_ID;
Having Max(purch_amnt) Between 2000 And 6000;

select order_date ,customers_ID , Max (Purch_amnt) From orders
group by oder_date customers_ID;
Having Max(purch_amnt) Between 2000 And 6000;

select order_date ,customers_ID , Max (Purch_amnt) From orders
group by oder_date customers_ID;
Having Max(purch_amnt) In (2000,3000,5760,6000) ;

select order_date ,customers_ID , Max (Purch_amnt) From orders
Where customer_Id Between 3002 And 3007;
Group By customer_ID;


select order_date ,customers_ID , Max (Purch_amnt) From orders
Where customer_Id Between 3002 And 3007;
Group By customer_ID;
Having Max(purch_amnt) >1000;

select order_date ,salesman_ID , Max (Purch_amnt) From orders
Group By salesman_ID;
Having customer_Id Between 5002 And 5008;

select Count(Order_no) from Orders
Where order_date = '2012-08-17';

select Count(salesman_Id) , city From oders
where city is Not Null;

select Count(salesman_Id) , order_Id, order_date From oders
Group By order_date, salesman_Id;

select AVg(Price_amnt) As Average price From Item_mast


select * From item_mast
where Pro_pirc >= 350;

select AVg(Price_amnt) As Average price , pro_code as company_ID From Item_mast
group By pro_com;

select SUM(Dep_ALLotment) as total_amount from emp_dep

select Count(emp_Id) , emp_dep from emp_details 
group By emp_dep;












































