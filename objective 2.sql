-- -------- ---------OBJECTIVE 2 -----------------


-- View the order details table -------------------
select * from order_details;

-- What is the date range of the table-----------------
select min(order_date)as starting_date, max(order_date)as ending_date
from order_details;

-- how many orders were made within this date range---------
select count(distinct order_id) as total_orders
from order_details;

-- how many items were ordered within this date range---
select  count(item_id) as num_items
from order_details;
-- -------------------------------------
select count(*) from order_details;

-- Which orders has the most number of items---------
select order_id,count(item_id)as num_items
from order_details
group by order_id
order by num_items desc;
-- ALTERNATIVE TO WHICH ORDER WIT MOST ITEMS
select order_id,sum(item_id)as total_items
from order_details
group by order_id
order by total_items desc;

-- how many orders had more than 12 items-----

select count(*) as More_than_12_Items
from
(select order_id, count(item_id) as total_item
from order_details
group by order_id
having total_item>12
)
as subquery;

-- 