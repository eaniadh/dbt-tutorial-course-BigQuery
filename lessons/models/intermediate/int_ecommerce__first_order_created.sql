{{
  config(
    materialized = 'ephemeral',
    )
}}

SELECT
    user_id,
    MIN(created_at) as first_order_created_at
FROM
    {{ ref('stg_ecommerce__orders') }}
group by 1