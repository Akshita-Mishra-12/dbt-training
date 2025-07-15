SELECT 
productid,
productname,
category,
subcategory,
sum(orderprofit) as profit
from {{ ref('stg_orders') }}
group by 1,2,3,4     -- instead of mentioning column names for group by we can mention their position in select part