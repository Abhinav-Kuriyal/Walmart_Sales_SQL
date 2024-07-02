-- Add a new column named time_of_day

select time from sales;
select date from sales order by date desc;

alter table sales add column time_of_day varchar(20);
update sales set time_of_day = (
case
when `time` between '00:00:00' and '12:00:00' then 'MORNING'
when `time` between '12:01:00' and '16:00:00' then 'AFTERNOON'
else 'EVENING'
end);

-- Add a new column named day_name

alter table sales add column day_name varchar(20);
update sales set day_name = dayname(date);

-- Add a new column named month_name

alter table sales add column month_name varchar(20);
update sales set month_name= monthname(date);
