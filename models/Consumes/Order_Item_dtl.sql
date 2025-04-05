SELECT OI.ORDER_ID, O.CUSTOMER_ID, C.NAME,C.CREDIT_LIMIT,OI.product_id,P.product_name, 
P.list_price, Oi.quantity, 
{{ TotalPrice('list_price', 'quantity','CREDIT_LIMIT') }} as Total_Price,
O.STATUS, O.ORDER_DATE 
FROM {{ ref('stg_ORDERS') }} O 
JOIN {{ ref('stg_CUSTOMERS') }} C 
ON O.CUSTOMER_ID = C.CUSTOMER_ID
 JOIN {{ ref('stg_ORDER_ITEMS') }} oi 
ON OI.ORDER_ID = O.ORDER_ID 
 JOIN {{ ref('stg_PRODUCTS') }} P 
 ON P.PRODUCT_ID = OI.PRODUCT_ID