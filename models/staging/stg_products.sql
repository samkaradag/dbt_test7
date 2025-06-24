WITH source AS (
    SELECT * FROM {{ source('ecom1', 'dagen_pipeline_ecompg2bq_ecommerce_products') }}
)

SELECT
    id AS product_id,
    name AS product_name,
    price,
    created_at,
    updated_at
FROM source