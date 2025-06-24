WITH source AS (
    SELECT * FROM `prd-dagen`.`ecom1`.`dagen_pipeline_ecompg2bq_ecommerce_customers`
)

SELECT
    id AS customer_id,
    first_name,
    last_name,
    email,
    created_at,
    updated_at
FROM source