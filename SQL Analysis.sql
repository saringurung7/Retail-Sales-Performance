CREATE DATABASE orders_database;
USE orders_database;
describe orders;
drop database orders_database;

-- find top 10 highest reveue generating products 
select product_id, sum(sale_price) as highest_revenue
from orders
group by product_id
order by highest_revenue desc
limit 10;

-- find top 5 highest selling products in each region
with cte as(
select region, product_id, sum(sale_price) as revenue
from orders
group by region, product_id
order by region , revenue desc),
cte_2 as(
select *
,row_number() over(partition by region order by revenue desc) as rnk
from cte)
select *
from cte_2
where rnk <=5;

-- find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
with cte as(
select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as sales
from orders
group by order_year, order_month
)
select order_month
,sum(case when order_year= 2022 then sales end) as "2022_sales"
,sum(case when order_year= 2023 then sales end) as "2023_sales"
from cte
group by order_month
order by order_month;

-- for each category which month had highest sales
with cte as(
select category, date_format(order_date, '%Y%m') as order_year_month, sum(sale_price) as sales
from orders
group by category, order_year_month
),
cte_2 as(
select *
,row_number() over(partition by category order by sales desc) as rnk
from cte
)
select category, sales
from cte_2
where rnk = 1;

-- which sub category had highest growth % by profit in 2023 compare to 2022
with cte as(
select sub_category, year(order_date) as order_year, sum(sale_price) as sales
from orders
group by sub_category, order_year
),
cte_2 as(
select sub_category
,sum(case when order_year= 2022 then sales else 0 end) as "profit_2022"
,sum(case when order_year= 2023 then sales else 0 end) as "profit_2023"
from cte
group by sub_category
)
select * , (profit_2023- profit_2022)*100/NULLIF(profit_2022,0) as growth_percentage
from cte_2
order by growth_percentage desc
limit 1;