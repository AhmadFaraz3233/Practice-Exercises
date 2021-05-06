-- SQL VIEW
CREATE VIEW newyorkstaff AS 
SELECT * FROM salesman
WHERE city = 'New York';

CREATE VIEW salesown AS
SELECT salesman_id, name, city
FROM salesman;

CREATE VIEW newyorkstaff
AS SELECT *
FROM salesman
WHERE city = 'New York' AND
WHERE commission > .13;


CREATE VIEW gradecount (grade, number)
AS SELECT grade, COUNT(*)
FROM customer
GROUP BY grade;


CREATE VIEW totalforday
 AS SELECT ord_date, COUNT(DISTINCT customer_id),
 AVG(purch_amt), SUM(purch_amt)
 FROM orders
 GROUP BY ord_date;



CREATE VIEW nameorders
AS SELECT ord_no, purch_amt, a.salesman_id, name, cust_name
FROM orders a, customer b, salesman c
WHERE a.customer_id = b.customer_id
AND a.salesman_id = c.salesman_id;



CREATE VIEW elitsalesman
AS SELECT b.ord_date, a.salesman_id, a.name
FROM salesman a, orders b
WHERE a.salesman_id = b.salesman_id
AND b.purch_amt =
    (SELECT MAX (purch_amt)
       FROM orders c
       WHERE c.ord_date = b.ord_date);


CREATE VIEW incentive
AS SELECT DISTINCT salesman_id, name
FROM elitsalesman a
WHERE 3 <=
   (SELECT COUNT (*)
    FROM elitsalesman b
    WHERE a.salesman_id = b.salesman_id);


CREATE VIEW highgrade
  AS SELECT * FROM customer
  WHERE grade =
    (SELECT MAX (grade)
     FROM customer);

CREATE VIEW citynum
AS SELECT city, COUNT (DISTINCT salesman_id)
FROM salesman
GROUP BY city;


CREATE VIEW norders
AS SELECT name, AVG(purch_amt), SUM(purch_amt)
FROM salesman, orders
WHERE salesman.salesman_id = orders.salesman_id
GROUP BY name;


CREATE VIEW mcustomer
AS SELECT * FROM salesman a
WHERE 1 <
   (SELECT COUNT(*)
     FROM customer b
     WHERE a.salesman_id = b.salesman_id);


CREATE VIEW citymatch(custcity, salescity)
AS SELECT DISTINCT a.city, b.city
FROM customer a, salesman b
WHERE a.salesman_id = b.salesman_id;


CREATE VIEW dateord(ord_date, odcount)
AS SELECT ord_date, COUNT (*)
FROM orders 
GROUP BY ord_date;


CREATE VIEW salesmanonoct
AS SELECT * FROM salesman
WHERE salesman_id IN
    (SELECT salesman_id
         FROM orders
         WHERE ord_date = '2012-10-10');



CREATE VIEW sorder
AS SELECT salesman_id, ord_no, customer_id
FROM orders
WHERE ord_date IN('2012-08-17', '2012-10-10');



































