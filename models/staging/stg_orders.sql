select --*,
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
ordersellingprice - ordercostprice as orderprofit,
--from raw_customer
c.customername,
c.segment,
c.country,
-- from raw_product
p.category,
p.productname,
p.subcategory,
---from RAW.GLOBALMART.ORDERS   this will pick data from snowflake
from {{ref('raw_orders')}} as o  --- this will pick data from raw layer, it will create a reference
left join {{ ref('raw_customer') }} as c
on o.customerid = c.customerid
left join {{ ref('raw_product') }} as p
on o.productid = p.productid

--when creating reference we would like to execute low level tables also use dbt run -s +stg_orders, it will execute downstream dependinceis also.

