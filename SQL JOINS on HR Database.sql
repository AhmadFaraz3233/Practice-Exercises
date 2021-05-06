--SQL JOINS on HR Database:

SELECT E.first_name , E.last_name , 
E.department_id , D.department_name 
FROM employees E 
INNER JOIN departments D 
ON E.department_id = D.department_id;

SELECT E.first_name,E.last_name, 
D.department_name, L.city, L.state_province
FROM employees E 
INNER JOIN departments D  
ON E.department_id = D.department_id  
INNER JOIN locations L
ON D.location_id = L.location_id;

SELECT E.first_name, E.last_name, E.salary, J.grade_level
FROM employees E 
INNER JOIN job_grades J
ON E.salary BETWEEN J.lowest_sal AND J.highest_sal;

SELECT E.first_name , E.last_name , 
E.department_id ,  D.department_name 
FROM employees E 
INNER JOIN departments D 
ON E.department_id = D.department_id 
AND E.department_id IN (80 , 40)
ORDER BY E.last_name;

SELECT E.first_name,E.last_name,
D.department_name, L.city, L.state_province
FROM employees E 
INNER JOIN departments D  
ON E.department_id = D.department_id 
INNER JOIN locations L 
ON D.location_id = L.location_id 
WHERE E.first_name LIKE  '%z%';

SELECT E.first_name, E.last_name, D.department_id, D.department_name 
FROM employees E 
RIGHT OUTER JOIN departments D
ON E.department_id = D.department_id;

SELECT E.first_name, E.last_name, E.salary 
FROM employees E 
INNER JOIN employees S
ON E.salary < S.salary 
AND S.employee_id = 182;

SELECT E.first_name AS "Employee Name", 
M.first_name AS "Manager"
FROM employees E 
INNER JOIN employees M
ON E.manager_id = M.employee_id;

SELECT D.department_name , L.city , L.state_province
FROM  departments D 
INNER JOIN locations L 
ON  D.location_id = L.location_id;

SELECT E.first_name, E.last_name, E.department_id, D.department_name 
FROM employees E 
LEFT OUTER JOIN departments D 
ON E.department_id = D.department_id;

SELECT E.first_name AS "Employee Name",
M.first_name AS "Manager"
FROM employees E 
LEFT OUTER JOIN employees M
ON E.manager_id = M.employee_id;

SELECT E.first_name, E.last_name, E.department_id 
FROM employees E 
JOIN employees S
ON E.department_id = S.department_id
AND S.last_name = 'Taylor';

SELECT job_title, department_name, first_name || ' ' || last_name AS Employee_name, start_date 
FROM job_history 
INNER JOIN jobs USING (job_id) 
INNER JOIN departments USING (department_id) 
INNER JOIN  employees USING (employee_id) 
WHERE start_date>='1993-01-01' AND start_date<='1997-08-31';

SELECT job_title, first_name || ' ' || last_name AS Employee_name, 
max_salary-salary AS salary_difference 
FROM employees 
NATURAL JOIN jobs;


SELECT department_name, AVG(salary), COUNT(commission_pct) 
FROM departments 
INNER JOIN employees USING (department_id) 
GROUP BY department_name;

SELECT job_title, first_name || ' ' || last_name AS Employee_name, 
max_salary-salary AS salary_difference
FROM employees 
NATURAL JOIN jobs 
WHERE department_id  = 80;

SELECT country_name,city, department_name 
FROM countries 
INNER JOIN locations USING (country_id) 
INNER JOIN departments USING (location_id);

SELECT department_name, first_name || ' ' || last_name AS name_of_manager
FROM departments D 
INNER JOIN employees E 
ON (D.manager_id=E.employee_id);

SELECT job_title, AVG(salary) 
FROM employees 
NATURAL JOIN jobs 
GROUP BY job_title;

SELECT a.* FROM  job_history a 
INNER JOIN employees m 
ON (a.employee_id = m.employee_id)
WHERE salary >= 12000;

SELECT country_name,city, COUNT(department_id)
FROM countries 
INNER JOIN locations USING (country_id) 
INNER JOIN departments USING (location_id) 
WHERE department_id IN 
    (SELECT department_id 
		FROM employees 
	 GROUP BY department_id 
	 HAVING COUNT(department_id)>=2)
GROUP BY country_name,city;

SELECT department_name, first_name || ' ' || last_name AS name_of_manager, city 
FROM departments D 
INNER JOIN employees E 
ON (D.manager_id=E.employee_id) 
INNER JOIN locations L USING (location_id);

SELECT first_name || ' ' || last_name AS Employee_name, salary
FROM employees 
INNER JOIN departments USING (department_id) 
INNER JOIN  locations USING (location_id) 
WHERE  city = 'London';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_name, j.job_title,h.*
FROM employees e
INNER JOIN
  (SELECT MAX(start_date),
          MAX(end_date),
          employee_id
   FROM job_history
   GROUP BY employee_id) h 
ON e.employee_id=h.employee_id
INNER JOIN jobs j ON j.job_id=e.job_id
WHERE e.commission_pct = 0;



SELECT d.department_name,e.*FROM departments d
JOIN
  (SELECT count(employee_id),
          department_id
   FROM employees
   GROUP BY department_id) e USING (department_id);;

SELECT first_name || ' ' || last_name AS Employee_name, 
employee_id, country_name 
FROM employees 
INNER JOIN departments USING(department_id) 
INNER JOIN locations USING( location_id) 
INNER JOIN countries USING ( country_id);




































