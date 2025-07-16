{{
    config(
        materialized='table'
    )
}}

select *
-- from RAW.GLOBALMART.CUSTOMER   this will be direct source, but in case source changes in snowflake then we need to change in every sql file, instead use __source
from {{ source('globalmart', 'customer') }}   -- source reference