-- follow the best practice, use CTEs
-- IMPORT CTE
with source_store_sales as (
    select * from {{ source('SAMPLES_DB_AWS_AP_SOUTHEAST_2', 'STORE_SALES') }}
),

-- Final CTE
final as (
    select * from source_store_sales
)

select * from final