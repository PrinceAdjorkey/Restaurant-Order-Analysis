# Restaurant Order Database & Analysis
## Welcome to the Restaurant Order Analysis SQL Project! 
This project provides a simple yet powerful database for tracking restaurant orders and analyzing sales, menu performance, and customer ordering patterns.
## Project Structure
## This project includes:
•	create_restaurant_db.sql — SQL script to create and populate the database with sample data.

•	Two main tables:

o	menu_items — stores all menu items, categories, and prices.

o	order_details — records every item ordered, with date and time.
## Database Schema
menu_items
Column	Type	Description

menu_item_id	SMALLINT	Unique item ID

item_name	VARCHAR(45)	Name of the menu item

category	VARCHAR(45)	Category of the item (e.g., Drink, Main Course)

price	DECIMAL(5,2)	Price of the item

order_details
## Column	Type	Description
order_details_id	SMALLINT	Unique ID for each item in an order

order_id	SMALLINT	Order ID (one order can have multiple items)

order_date	DATE	Date of the order

order_time	TIME	Time of the order

item_id	SMALLINT	References menu_items
________________________________________
## Key Features
 Track Orders: See what customers ordered and when.
 
 Analyze Menu Performance: Identify best and least selling items by category.
 
Revenue Analysis: Calculate revenue over time, average order size, and more.

Flexible Queries: Easily join tables for deeper insights.
________________________________________
 
## Start analyzing
Write your SQL queries to:

•	Get total orders per day.

•	Find most popular menu items.

•	Calculate daily/hourly sales.

•	Analyze trends by item category.
________________________________________
## Who is this for?
•	Data Analysts: Practice SQL joins, aggregates, and time-based analysis.

•	Restaurant Owners: Understand how to use data to make informed decisions.

•	Students: Learn real-world database design for hospitality.

## Requirements
•	MySQL or compatible SQL database engine.

•	Basic SQL knowledge.
________________________________________
## License

This project is open source and free to use for educational and analytical purposes.
________________________________________

