-- COMBINE THE MENU ITEMS AND CUSTOMER DETAILS IN A SINGLE TABLE
select * from menu_items;
select * from order_details;

select* FROM order_details od LEFT JOIN menu_items mi
on od.item_id = mi.menu_item_id;

-- What were the least and most ordered items? What categories were they in?alter
select item_name, category,count(order_details_id)as num_purchases
 FROM order_details od LEFT JOIN menu_items mi
on od.item_id = mi.menu_item_id
group by item_name,category
order by num_purchases desc;

-- What were the top five orders that spend most money
select order_id,sum(price) as total_spent FROM order_details od LEFT JOIN menu_items mi
on od.item_id = mi.menu_item_id
group by order_id
order by total_spent desc
limit 5;

-- View the details of highest spending order
select category,count(item_id) FROM order_details od LEFT JOIN menu_items mi
on od.item_id = mi.menu_item_id
where order_id = 440
group by category
