{{
    config(
        materialized='table'
    )
}}
-- above is a configuration block, type __ , it will list all dbt functions, select config and it will now change creation of default view to table.
-- dbt run will execute all models present in models folder. 
-- dbt run --select raw will execute only mentioned model or folder

select * 
-- from RAW.GLOBALMART.ORDERS
from {{ source('globalmart', 'orders') }}