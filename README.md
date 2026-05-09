# Superstore-Data-Analysis
Superstore Sales & Profitability Analysis (SQL)
This repository contains a comprehensive data analysis of the Sample Superstore Dataset. The project focuses on answering key business questions related to profitability, regional performance, and the impact of discounts using SQL.

📂 Project Files
Sample - #Superstore.csv: Raw dataset containing ~10,000 rows of retail transactions.
#superstore_queries.sql: Comprehensive SQL script containing the analytical queries.

Which region generates the most sales and profit?
select region, 
sum(sales) as 'sale',
sum(profit) as 'profit'
from 'sample - superstore'
group by region
order by profit desc;
Identifies the primary geographic drivers of revenue and actual earnings.

What is the profit margin percentage for each region? select Region, round((sum(profit)/sum(sales))*100,2) as profit_margin from 'sample - superstore' group by region order by profit_margin desc; Shows regional efficiency; high sales with low margins might indicate high operating costs.

Which are the top 10 most efficient States? select state, sum(sales) as 'sale', sum(profit) as 'profit', round((sum(profit)/sum(sales))*100,2) as margin from 'sample - superstore' group by state order by margin desc limit 10; Pinpoints specific states that are the most profitable relative to their sales volume.

Which are the top 10 most efficient Cities? select city, sum(sales) as 'sale', sum(profit) as 'profit', round((sum(profit)/sum(sales))*100,2) as margin from 'sample - superstore' group by city order by margin desc limit 10; Identifies high-performing local markets where business performance is peaking.

How do different discount levels affect average sales? select (discount*100), round(avg(sales),2) as 'avg' from 'sample - superstore' group by discount order by avg desc; Helps determine if lowering prices actually encourages customers to spend more per order.

Which category has the highest total discount amount? select category, sum(discount) as 'discount' from 'sample - superstore' group by category order by discount desc; Shows which product lines are being pushed the hardest through price cuts.

Which specific sub-categories are most discounted? select category,sub-category, sum(discount) as 'discount' from 'sample - superstore' group by category,Sub-Category order by discount desc; Provides granular detail on pricing strategies for specific items like Binders or Phones.

How does category performance vary by region? select category,region, sum(sales) as 'sale', sum(profit) as 'profit' from 'sample - superstore' group by category,region order by profit desc; Shows if specific categories perform significantly better in certain geographic areas.

What is the total profit and sales contribution per product? select product name, sum(profit) as 'profit', sum(sales) as 'sale' from 'sample - superstore'; A comprehensive overview of which individual items are the stars of the inventory.

Which customer segment is the most profitable? select sagment, sum(sales) as 'sale', sum(profit) as 'profit' from 'sample - superstore' group by sagment order by profit desc; Tells you if you should focus marketing on Corporate, Consumer, or Home Office segments.

How many total orders were profitable? select count(profit) from 'sample - superstore' where profit>0; A high-level health check that tells you the volume of successful transactions.

How many total orders resulted in a loss? select count(profit) from 'sample - superstore' where profit<0; This is a red-flag metric that shows how many sales are actually hurting the bottom line.

Which segment buys the most physical items? select segment, sum(quantity) as 'quan' from 'sample - superstore' group by segment; Useful for inventory planning based on which customer type moves the most stock.

Which category is the overall profit leader? select category, sum(profit) as 'profit' from 'sample - superstore' group by category; Directly identifies which of the main categories is the most valuable to the business.

How many items are shipped to each region? select region, sum(quantity) as 'region_order' from 'sample - superstore' group by region order by region_order; Essential for logistics and regional supply chain optimization.

Which states have the highest order volume? select state, sum(quantity) as 'state_order' from 'sample - superstore' group by state order by state_order desc; Shows where the physical demand for goods is highest across the country.

What do the first 5 records of the data look like? Select * from 'sample - superstore' limit 5; A data-preview step to understand the columns and data types in the table.

What does the entire raw dataset contain? Select * From 'sample - superstore'; Used to extract the full raw dataset for external auditing or processing.

What is the total overall profit of the company? Select round(sum(profit),2) from 'sample - superstore'; The ultimate KPI showing the net success of the entire store's operations.

What is the total sum of all positive profit? select round(sum(profit),2) from 'sample - superstore' where profit>0; Shows the potential profit if the business could eliminate all losing transactions.

What is the total financial loss from bad orders? select round(sum(profit),2) from 'sample - superstore' where profit<0; Quantifies exactly how much money is being lost on unprofitable sales.

How many orders had a quantity of more than 5? select count(quantity) from 'sample - superstore' where Quantity>5; Identifies bulk orders where customers are buying in larger amounts.

Which region has the highest total revenue? select region, sum(sales) as 'sale' from 'sample - superstore' group by region order by sale desc; Shows where the most cash flow is coming from, regardless of the final profit.

Which category is the revenue (sales) leader? select category, sum(sales) as 'sale', sum(profit) as 'profit' from 'sample - superstore' group by category order by sale desc; Identifies the most popular product categories by dollar amount.

What is the profile of a high-value healthy sale? select * from 'sample - superstore' where sales>1000 and profit>0 and Quantity>5; Isolates high-value transactions to find winning patterns in bulk, high-revenue sales.

Which specific record yielded the highest profit? select * from 'sample - superstore' where profit>0 order by profit desc limit 1; Identifies the single most successful transaction in the history of the dataset.

Which specific record had the highest sales revenue? select * from 'sample - superstore' order by sales desc limit 1; Locates the single largest sale by dollar amount, even if it wasn't the most profitable.

🛠️ Tools Used
SQL: For data manipulation and metric calculation.

GitHub: For version control and project documentation.
