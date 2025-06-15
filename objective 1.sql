use restaurant_db;
-- OBJECTIVE 1
-- View the menu items table
select * from menu_items;

-- Find the number of items on the menu
select count(*)  as num_items from menu_items;

-- What are the least and most expensive items on the menu
select item_name, price
from menu_items
order by price desc;

-- How many italian dishes are on the menu
select * from menu_items
where category= "italian";
-- Italian Count
select count(*) from menu_items
where category= "italian";

-- What are the least and most expensive italian dishes on the menu
select * from menu_items
where category= "italian"
order by price desc;

-- How many dishes are in each category--

select category, count(item_name)
from menu_items
group by category;

-- what is the average dish price in each category
select category, avg(price)
from menu_items
group by category;

