create database pizza_db;
use pizza_db;


-- creating table manually based on the csv file and then import the csv file data into this table 
-- this is due to changing column datatype limitatio issue
CREATE TABLE pizza_sales (
  pizza_id INT,
  order_id INT,
  pizza_name_id VARCHAR(50),
  quantity INT,
  order_date DATE,
  order_time TIME,
  unit_price DECIMAL(10,2),
  total_price DECIMAL(10,2),
  pizza_size VARCHAR(10),
  pizza_category VARCHAR(50),
  pizza_ingredients TEXT,
  pizza_name VARCHAR(100)
);


ALTER TABLE pizza_sales
MODIFY order_date VARCHAR(10);



SET SQL_SAFE_UPDATES = 0;

UPDATE pizza_sales
SET order_date = STR_TO_DATE(order_date, '%d-%m-%Y');

SET SQL_SAFE_UPDATES = 1;

ALTER TABLE pizza_sales
MODIFY order_date DATE;

select * from pizza_sales;
########################## KPI requirements #############################

-- 1. find total revenue (sum of total price of all pizzas)
select sum(total_price) as total_revenue from pizza_sales;

-- 2.average order value (total revenue / total orders)
select sum(total_price) / count(distinct(order_id)) as average_order_value from pizza_sales;

-- 3.total pizzas sold (sum of all quantities of pizza sold)
select sum(quantity) total_quantity from pizza_sales;

-- 4.total orders 
select count(distinct(order_id)) as total_orders from pizza_sales;

-- 5.average pizzas per order(total pizzas sold / total orders) 
SELECT 
ROUND(
  SUM(quantity) / COUNT(DISTINCT order_id),2) AS average_pizza_per_order
FROM pizza_sales;

####################### Trend Analysis ##########################3
-- Bar chart showing day of week vs total distinct orders

SELECT 
DAYNAME(order_date) AS day_name,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DAYNAME(order_date)
ORDER BY total_orders DESC;

-- hourly trends for orders
SELECT 
HOUR(order_time) AS order_hour,
COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY order_hour
order by order_hour;

-- 3. percentages of sales by pizza category
select * from pizza_sales;
select pizza_category,sum(total_price) category_sales from pizza_sales group by pizza_category;

select sum(total_price) total_revenue from pizza_sales;
/* 
-- with CTE
WITH category_sales AS (
    SELECT
        pizza_category,
        SUM(total_price) AS category_sales
    FROM pizza_sales
    GROUP BY pizza_category
),
total_sales AS (
    SELECT
        SUM(total_price) AS total_revenue
    FROM pizza_sales
)
SELECT
    c.pizza_category,
    c.category_sales,
    t.total_revenue,
    ROUND(c.category_sales * 100 / t.total_revenue, 2) AS percentage_of_sales
FROM category_sales c
CROSS JOIN total_sales t
ORDER BY percentage_of_sales DESC;
*/

-- using subquery 
SELECT
    pizza_category,
    SUM(total_price) TOTAL_SALES,
    ROUND(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price)
         FROM pizza_sales
		),
        2
    ) AS percentage_of_sales
FROM pizza_sales
GROUP BY pizza_category;
-- if u want to see total_sales or percentage of total_sales by month or quarter then use where 
-- where month(order_date) = 1 (if u want month wise total sales or percentage sales then do this)
-- where quarter(order_date) = 1 (if u want quaurter wise then do this and here 1 means Q1 u can also change 2,3,4 as(Q2,Q3,Q4)



-- 4. percentage of sales by pizza size
SELECT
    pizza_size,
    SUM(total_price) TOTAL_SALES,
    ROUND(
        SUM(total_price) * 100.0 /
        (SELECT SUM(total_price)
         FROM pizza_sales
         ),
        2
    ) AS percentage_of_sales
FROM pizza_sales
GROUP BY pizza_size order by percentage_of_sales desc;


-- 5.total pizzas sold by pizza category 
select pizza_Category,sum(quantity) total_quantity from pizza_sales group by pizza_category;


####################### Best and worst sellers ############################
-- 6.with respect to pizza name find top 5 best seller pizzas 
select pizza_name,sum(quantity) total_quantity_sales from pizza_sales group by pizza_name order by total_quantity_sales desc limit 5;

-- 7.with respect to pizza name find top 5 worst seller pizzas 
select pizza_name,sum(quantity) total_quantity_sales from pizza_sales group by pizza_name order by total_quantity_sales limit 5;


