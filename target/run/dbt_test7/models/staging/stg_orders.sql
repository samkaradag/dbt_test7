

  create or replace view `prd-dagen`.`ecom1`.`stg_orders`
  OPTIONS()
  as WITH source AS (
    SELECT * FROM `prd-dagen`.`ecom1`.`dagen_pipeline_ecompg2bq_ecommerce_orders`
)

SELECT
    id AS order_id,
    user_id AS customer_id,
    status,
    created_at,
    updated_at
FROM source;

