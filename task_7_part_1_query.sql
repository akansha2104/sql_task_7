select * from sales

select * from customer 

select * from product 

select c.state, sum(s.sales) as "sum_of_sales", min(s.sales) as "min_of_sales" , max(s.sales) as "max_of_sales",
count(s.sales) as "count_of_sales" , avg(s.sales) as "avg_of_sales",sum(s.quantity) as "sum_sales_quantity",
min(s.quantity) as "min_sales_quantity" , max(s.quantity) as "max_sales_quantity" , avg(s.quantity) as "avg_sales_quantity",
sum(s.discount) as "sales_sum_discount",min(s.discount) as "sales_min_discont",
max(s.discount) as "max_sales_discount", avg(s.discount) as "avg_sales_discount",
sum(s.profit) as "sum_sales_profit",min(s.profit) as "min_sales_profit" , max(s.profit) as "max_sales_profit", avg(s.profit) as "avg_sales_profit"
from sales as s
inner join customer as c
on s.customer_id = c. customer_id
group by c.state


select state,city, avg(age) as "customer_average_age" from customer
group by state,city
order by state, city

select p.product_name, s.order_date, sum(s.sales)/sum(s.quantity) as "sales_per_qunatity" from sales as s
inner join product as p
on s.product_id = p.product_id
where (s.order_date) between '2017-01-01' and '2018-12-31'
group by p.product_name , s.order_date
