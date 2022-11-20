with countries as (

    select
        'United States' as country

    union all

    select
        'Canada' as country

    union all

    select
        'United Kingdom' as country

    union all

    select
        'Australia' as country

    union all

    select
        'China' as country

)

select * from countries