{% macro get_season(x) %}
case
    when month(to_timestamp({{x}})) in (12,1,2)
    then 'VERANO'
    when month(to_timestamp({{x}})) in (3,4,5)
    then 'OTOÑO'
    when month(to_timestamp({{x}})) in (6,7,8)
    then 'INVIERNO'
    else 'PRIMAVERA'
end 
{% endmacro %}

{% macro day_type(x) %}
case
    when dayname(to_timestamp({{x}})) in ('Sat', 'Sun')
    then 'NO LABORABLE'
    else 'LABORABLE'
end
{% endmacro %}