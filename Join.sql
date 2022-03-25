# inner Join --- Intersetion of tables -- COMMON DATA FROM TABLES

select * from customers
inner join orders 
on customers.customernumber = orders.customernumber
#till above 2 tables joined

inner join orderdetails
on orders.ordernumber = orderdetails.ordernumber;
# now 3 tables joined