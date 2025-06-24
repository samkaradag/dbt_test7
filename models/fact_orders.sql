WITH stg_orders AS (
    SELECT * FROM {{ ref('stg_orders') }}
),
stg_order_items AS (
    SELECT * FROM {{ ref('stg_order_items') }}
),
stg_products AS (
    SELECT * FROM {{ ref('stg_products') }}
)

SELECT
    o.order_id,
    o.customer_id,
    o.status,
    o.created_at AS order_date,
    oi.product_id,
    p.product_name,
    oi.quantity,
    p.price AS unit_price,
    (oi.quantity * p.price) AS total_amount
FROM stg_orders o
JOIN stg_order_items oi ON o.order_id = oi.order_id
JOIN stg_products p ON oi.product_id = p.product_id