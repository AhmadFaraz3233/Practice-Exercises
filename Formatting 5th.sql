--Formating :

SELECT salesman_id,name,city,'%',commission*100 FROM salesman;

select 'For', ord_date,',there are',COUNT(DISTINCT order_no), 'orders,' From orders
Group by oder_date;

select * From orders
order by order_no ASC;

select * From orders
order by ord_date DESC; 

select * From orders
order by ord_date , Purch_amt DESC;

select cust_name, city, grade From Customers
order By customer_ID ;

select salesman_Id , order_date, Max(purch_amt) From Orders
Group by saleasman_Id , order_date ;
order by saleasman_Id , order_date ;

select cust_name, city, Max(grade)From Customers
order By grade DESC; 

select Customer_ID, COUNT(DISTINCT ord_no),Max(Purch_amt),  FROM oders
group by cutomer_ID;
order by purch_amt DESC;

select order_date,SUM(purch_amt), COUNT(purch_amt * .15) From orders
Group by order_date
order by order_date;




































