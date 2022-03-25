select c.customernumber, c.customerName,
o.orderdate, o.status,
od.quantityOrdered, od.priceEach, od.quantityOrdered*od.priceEach as Cost

from customers c
inner join orders o
on c.customernumber = o.customernumber
inner join orderdetails od
on o.ordernumber = od.ordernumber

group by c.customernumber
order by c.customernumber;