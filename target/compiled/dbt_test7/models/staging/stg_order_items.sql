WITH source AS (
    SELECT * FROM `prd-dagen`.`ecom1`.`dagen_pipeline_ecompg2bq_ecommerce_order_items`
)

SELECT
    id AS order_item_id,
    order_id,
    product_id,
    quantity,
    created_at,
    updated_at
FROM source