---Practice SQL Exerciess--
Select * from salesman

select " The sql Exserciess, parctice them";

select 5,10,15;

Select name, city, comission from salesman 
where salesman_Id = 1;

select 5 + 6 * 10;

select name, commission from salesman 
select order_date, salesman_id, order_number, purch_amount 
from orders;

select Distinct salesman_Id from orders  

Select name, city from saleasman
where city = 'Paris';

Select grade from customer 
where grade == 200;

Select order_no, order_date , purchase_amt from salesman 
Where ID= 5001;

Select * from noble_prise
Where year = 1970
order by Year;

select * from noble_price 
where year = 1971 And subject = 'Literature';

Select year, subject from noble_price 
Where Winner = 'Dennis Gabor';

Select winner, from noble_win 
where year >= 1950 And subject = 'physics';

select year, subject, winner, country from nobel_win
where subject = chemsitery And year>= 1965 And year<=1975; 

select * From noble_win
where  year > 1972 And winner IN ( 'Menachem Begin', 'Yitzhak Rabin');

select * from noble_win   
 where winner like 'louis%';

 select * from noble_win
 where (subject = 'physics'  And year = 1970) 
 Union 
 select * from noble_win 
 where (subject =' Economics' And year = 1971);
 
 select * from noble_win 
 where year = 1970 And Subject Not IN ('physiology','Econimics.0');
.
 select from noble_win 
 where (subject = 'Physiology' And year < 1971)
 Union
 select from noble_win
 where (subject = 'Peace' And year >= 1974);

  select * from noble_win
  Where winner = 'johannes georg bednorz';

 
  select * from noble_win 
  where subject like [!p%]
  order by year Dsc, winner;
  
  select * from noble_win 
  where year = 1970;
  order by Case When subject IN ('Ecnomics', 'chemistry') THEN 1
  Else 0 ASC End, subject , winner;

  select * from item_mast
  where pro_price Btween 200 And 600;

  select AVG(pro_price) from item_mast 
  where pro_com = 16;

  select name , price from item_mast As in RS;
  
  select name, Price from item_mast
  where price >=250 
  order by price DSC, name ASC;

  select Avg(pro_price), pro_com from item_win
  Group by pro_com

  select pro_name , pro_price from item_win 
  Where pro_price(
  select Min(pro_price) from item_mast;
  
  select Distinct lastname from eimp_details;

  
  select * from eimp_details;
  where lastname = 'Snares'; 

select * from eimp_details 
where eimp_dept = 57;

