{%- macro is_weekend(date_column) -%}
    EXTRACT(DAYOFWEEK FROM DAY({{ date_column }})) in (1, 7)
{%- endmacro -%}