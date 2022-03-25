select  c.customernumber, c.customerName,
o.orderdate, o.status,
od.quantityOrdered, od.priceEach, sum(od.quantityOrdered*od.priceEach) as Cost

from customers c
Left join orders o
on c.customernumber = o.customernumber
left join orderdetails od
on o.ordernumber = od.ordernumber

group by c.customernumber
order by cost DESC;

# same syntax - inner,left, right