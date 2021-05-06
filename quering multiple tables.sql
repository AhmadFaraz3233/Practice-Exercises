--QUering Multiplle Tables 

select salesman.name, salesman.city, Customer.cust_name From salesman, Customer
Where salesman.city = Customer.city;

select customer.cust_name, salesman.name from customer, salesman
where customer.salesman_ID = salesman.salesman_ID


select orders.ord_no , cust_name, order.cust_ID, order.salesman_ID 
From orders, customer, slaesman 
where Custmer.city <> salesman.city
And customer.custmer_ID = order.Customer_ID
ANd slaesman.salesman_ID = order.salesman_ID

select order.order_no, customer.cust_name, 
from orders, custmers
where order.Customer_ID = customer.custmer_ID

SELECT customer.cust_name AS "Customer",
customer.grade AS "Grade"
FROM orders, salesman, customer
WHERE orders.customer_id = customer.customer_id
AND orders.salesman_id = salesman.salesman_id
AND salesman.city IS NOT NULL
AND customer.grade IS NOT NULL;


select customer.cust_name AS customer, customer.city AS City, saleman.name AS salesman, salesman.commission 
From customer, salesman 
where cutomer.salesman_ID = salesman.salesman_Id
And
salesman.commission between (.12 And .14) 

select order.ord_no, Customer.cust_name As Customer,
commission AS "Commission%",
purch_amt*commission AS "Commission"
from orders, customers, salesman 
where orders.customer_id = customer.customer_id
AND orders.salesman_id = salesman.salesman_id
ANd customer.Grade >= 200

select * From customer, orders
where orders.cusomer_ID = customer.customer_ID
And order.order_date = '2012-10-05';














