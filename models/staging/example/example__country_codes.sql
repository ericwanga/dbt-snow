with countries as (

    select * from {{ ref('example__countries')}}
),

country_codes as (

    select * from {{ ref('country_codes')}}
),

final as (

    select 
    countries.country,
    country_codes.country_code

    from countries
    left join country_codes 
        on countries.country = country_codes.country_name
)

select * from final
