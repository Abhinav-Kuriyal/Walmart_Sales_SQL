-- How many unique cities does the data have?
select distinct city from sales;
select count(distinct(city)) from sales;

-- In which city is each branch?
select distinct city,branch from sales;
select distinct city,branch from sales order by city desc;
select distinct city,branch from sales order by branch desc;

-- How many unique product lines does the data have?

select count(distinct(product_line)) from sales;
select distinct product_line from sales;

-- What is the most common payment method?

select payment_method, count(payment_method) as total
from sales group by payment_method order by total desc;

-- What is the most selling product line?

select product_line, count(product_line) as total 
from sales group by product_line order by total desc;

select count(product_line) from sales;


-- What is the total revenue by month?






-- What product line had the largest revenue?

select product_line, sum(total) as revenue from sales
group by product_line order by revenue desc;

select product_line, sum(total) as revenue from sales
group by product_line order by revenue desc limit 1;


-- What is the city with the largest revenue?

select city, sum(total) as revenue from sales group by city
order by revenue desc;

select city, sum(total) as revenue from sales
group by city order by revenue desc limit 1 ;


-- What product line had the largest VAT?

select product_line, avg(vat) as VAT from sales group by
product_line order by avg(VAT) desc limit 1;

select product_line, avg(vat) from sales group by
product_line order by avg(vat);


-- Fetch each product line and add a column to
-- those product line showing "Good", "Bad".
-- Good if its greater than average sales






-- Which branch sold more products than average product sold?

select branch, sum(quantity) as qty from sales group by branch
having sum(quantity) > (select sum(quantity) / count(distinct(branch)) from sales);

select sum(quantity) from sales;
select count(distinct(branch)) from sales;

select branch, sum(quantity) as qty from sales group by branch;
select sum(quantity) / count(distinct(branch)) from sales;

-- What is the most common product line by gender?

select gender,product_line, count(gender) as unit from sales
group by gender,product_line order by unit desc; 

-- What is the average rating of each product line?

select round(avg(rating),2) as AVG_Rating , product_line from sales
group by product_line order by AVG_Rating desc;

select product_line, avg(rating) as AVG_Rating from sales
group by product_line order by AVG_Rating desc;

-- Number of sales made in each time of the day per weekday


-- Which of the customer types brings the most revenue?

select customer_type, sum(total) as revenue from sales 
group by customer_type order by revenue desc;

select count(distinct(customer_type)) from sales;

-- Which city has the largest tax percent/ VAT (Value Added Tax)?

select city,sum(vat) as VAT from sales group by city
order by VAT desc limit 1;

-- Which customer type pays the most in VAT?

select customer_type, sum(vat) as VAT from sales 
group by customer_type order by VAT desc limit 1;

-- How many unique customer types does the data have?

select count(distinct(customer_type)) from sales;
select distinct(customer_type) from sales;

-- How many unique payment methods does the data have?

select count(distinct(payment_method)) from sales;
select distinct(payment_method) from sales;

-- What is the most common customer type?

select payment_method, count(payment_method) as num
from sales group by payment_method order by num desc limit 1;

-- Which time of the day do customers give most ratings?

select time_of_day, count(rating) as no_of_ratings from sales group by time_of_day
order by no_of_ratings desc;

-- Which time of the day do customers give most ratings per branch?

select time_of_day, branch, count(rating) from sales group by time_of_day, branch
order by count(rating) desc;

-- Which day of the week has the best avg ratings?

select day_name, avg(rating) from sales group by day_name order by avg(rating) desc limit 1;

-- Which day of the week has the best average ratings per branch?

select day_name, branch, avg(rating) from sales group by day_name, branch order by avg(rating) desc;

