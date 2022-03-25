select 
c.customernumber,
c.customerName,
o.orderdate,
o.status,
od.quantityOrdered,
od.priceEach,
sum(od.quantityOrdered*od.priceEach) as Cost

from customers c
Left join orders o
using (customernumber) 
left join orderdetails od
using( ordernumber)

group by c.customernumber
order by cost DESC;

# same ahet - inner,left, right