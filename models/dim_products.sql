WITH stg_products AS (
    SELECT * FROM {{ ref('stg_products') }}
)

SELECT
    product_id,
    product_name,
    price,
    created_at,
    updated_at
FROM stg_products