-- With this test_not_null in place in the project folder, 
-- it will override the default not_null test
-- which is just below lines.
-- But now since we have it here locally to override,
-- we can add more filters/other changes to it

{% macro test_not_null(model) %}

{% set column_name = kwargs.get('column_name', kwargs.get('arg')) %}

select count(*)
from {{ model }}
where {{ column_name }} is null
    -- and x
    -- and y
    -- and z

{% endmacro %}