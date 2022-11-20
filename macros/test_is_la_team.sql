{% macro test_is_la_team(model, column_name) %}

with validation as (

    select 
        {{ column_name }} as city,
        team

    from {{ model }}

),

validation_errors as (

    select city

    from validation

    where city = 'Los Angelas'
        and team not in ('Lakers', 'Clippers')
)

-- select count(*) won't work -> need to return nothing for a pass
-- return "0" or "1" is still 1 record, which is not "nothing", and will fail the test
select 
    *
from validation_errors

{% endmacro %}