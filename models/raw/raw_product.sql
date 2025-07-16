{{
    config(
        materialized='table'
    )
}}

select * 
-- from RAW.GLOBALMART.PRODUCT
from {{ source('globalmart', 'product') }}