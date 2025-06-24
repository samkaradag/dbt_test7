WITH stg_customers AS (
    SELECT * FROM {{ ref('stg_customers') }}
)

SELECT
    customer_id,
    first_name,
    last_name,
    email,
    created_at,
    updated_at
FROM stg_customers