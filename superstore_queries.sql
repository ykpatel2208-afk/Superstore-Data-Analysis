select region,
sum(sales) as 'sale',
sum(profit) as 'profit'
from `sample - superstore`
group by region 
order by profit desc;
select Region,
round((sum(profit)/sum(sales))*100,2) as profit_margin
from `sample - superstore`
group by region
order by profit_margin desc;
select state, sum(sales) as 'sale', sum(profit) as 'profit',
round((sum(profit)/sum(sales))*100,2) as margin
from `sample - superstore`
group by state
order by margin desc
limit 10;
select city, sum(sales) as 'sale', sum(profit) as 'profit',
round((sum(profit)/sum(sales))*100,2) as margin
from `sample - superstore`
group by city
order by margin desc
limit 10;
select (discount*100),
round(avg(sales),2) as 'avg'
from`sample - superstore`
group by discount
order by avg desc;
select category,
sum(discount) as 'discount'
from`sample - superstore`
group by category
order by discount desc;
select category,sub-category,
sum(discount) as 'discount'
from`sample - superstore`
group by category,Sub-Category
order by discount desc;
select category,region,
sum(sales) as 'sale',
sum(profit) as 'profit'
from`sample - superstore`
group by category,region
order by profit desc;

select product name, 
sum(profit) as 'profit',
sum(sales) as 'sale'
from`sample - superstore`;

select sagment,
sum(sales) as 'sale',
sum(profit) as 'profit'
from`sample - superstore`
group by sagment
order by profit desc;
select 
count(profit)
from`sample - superstore`
where profit>0;
select 
count(profit)
from`sample - superstore`
where profit<0;
select segment, 
sum(quantity) as 'quan'
from`sample - superstore`
group by segment;
select category,
sum(profit) as 'profit'
from`sample - superstore`
group by category;
select region,
sum(quantity) as 'region_order'
from`sample - superstore`
group by region
order by region_order;
select state,
sum(quantity) as 'state_order'
from`sample - superstore`
group by state
order by state_order desc;
Select *
from `sample - superstore`
limit 5;
Select * From `sample - superstore`;
Select  
round(sum(profit),2)
from`sample - superstore`;
select 
round(sum(profit),2)
from`sample - superstore`
where profit>0;
select 
round(sum(profit),2)
from`sample - superstore`
where profit<0;
select 
count(quantity)
from`sample - superstore`
where Quantity>5;
select region,
sum(sales) as 'sale'
from`sample - superstore`
group by region
order by sale desc;
select category,
sum(sales) as 'sale',
sum(profit) as 'profit'
from`sample - superstore`
group by category
order by sale desc;
select * from`sample - superstore`
where sales>1000
     and profit>0
     and Quantity>5;
select *
from `sample - superstore`
where profit>0
order by profit desc
limit 1;
select * 
from`sample - superstore`
order by sales desc
limit 1;
     