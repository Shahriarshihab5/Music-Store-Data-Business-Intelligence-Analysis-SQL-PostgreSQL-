select * from employee
order by levels desc limit 1

select * from invoice

select billing_country,
count(invoice_id) from invoice
group by billing_country 
order by count(invoice_id)
Desc;

select total
from invoice
order by total desc
limit 3 

select sum(total)as invoice_total,billing_city
from invoice
group by billing_city
order by invoice_total desc

select * from customer;


select customer.customer_id,
customer.first_name,
customer.last_name,
sum(invoice.total)
as total 
from customer
join invoice
on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1




select sum(total) as total ,customer_id
from invoice 
group by customer_id
order by total desc

