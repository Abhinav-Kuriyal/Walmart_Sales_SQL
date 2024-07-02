create database walmart;
show databases;
use walmart;
create table sales;
show databases;
use walmart;
show tables;
create table sales(
invoice_id varchar(30) not null primary key,
branch varchar(30) not null,
city varchar(30) not null,
customer_type varchar(30) not null,
gender varchar(30) not null,
product_line varchar(100) not null,
unit_price decimal(10,2) not null,
quantity int not null,
vat float(6,4) not null,
total decimal(12,4) not null,
date_ datetime not null,
time_ datetime not null,
payment_method varchar(30) not null,
cogs decimal(10,2) not null,
gross_margin_pct float(11,9),
gross_income decimal(12,4) not null,
rating float(2,1)
);
show databases;
use walmart;
show tables;
desc sales;
select * from sales;
alter table sales modify time time;
alter table sales modify time time not null;
desc sales;
select * from sales;
