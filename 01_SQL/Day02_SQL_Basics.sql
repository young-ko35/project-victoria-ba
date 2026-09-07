-- Project VICTORIA BA v1.0
-- Day 2: SQL Basics
-- Topics: SELECT, WHERE, AND, OR, ORDER BY, LIMIT
-- Dataset: Superstore Sales Dataset
-- Date: 2026-09-07

--select all custmers name
select "Customer Name"
from train t;

--only customers from kentucky
select t."Customer Name"
from train t where t."State" = 'Kentucky'; 

--sales over 1000
select "Customer Name" , "Sales"
from train 
where "Sales" >= 1000.00;

--Customer who buy Furniture
select t."Customer Name"  
from train t where t."Category" = 'Furniture';

--Customer from California + sales over 1000
select t."Customer Name" 
from train t where t."State" ='California' and t."Sales" >= 1000;

--Customer from Kentucky or California
select t."State"    
from train t 
where t."State" = 'Kentucky' or t."State" = 'California';

--sales higher
select t."Customer Name" 
from train t order by t."Sales" desc;

--sales lower
select t."Customer Name" 
from train t order by t."Sales" asc;

--recentley date
select t."Customer Name" , t."Order Date" 
from train t order by t."Order Date" desc limit 10;

--sales higher 5
select t."Customer Name", t."Sales"
from train t order by t."Sales" desc limit 5

--10 customers who has higher sales from California buy furniture
select 
	t."Customer Name" , 
	t."Sales" , 
	t."State" ,
	t."Category" 
from train t 
where t."State" = 'California'
and t."Category" = 'Furniture'
order by t."Sales" desc 
limit 10;

--from Kentucky customer sales between 500-1500
select 
	t."Customer Name" , 
	t."Sales" , 
	t."State" 
from train t 
where t."State" = 'Kentucky'
  and t."Sales" >= 500 
  and t."Sales" <= 1500;
--and t."Sales" between 500 and 1500 <- better

--recentley customers who ordered furniture limit 5
select 
	t."Customer Name" , 
	t."Category" , 
	t."Order Date"  
from train t 
where t."Category" = 'Furniture'
order by t."Order Date" desc 
limit 5;