{{ 
config(
    materialized = 'incremental' ,
    unique_ke = 'Order_ID' ,
    incremental_strategy = 'merge'
    )
}}

select *
from {{ ref('stg_ORDERS') }}
{% if is_incremental() %}
where order_date > (select max(order_date) from {{ this }})
{% endif %}
