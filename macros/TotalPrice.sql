{% macro TotalPrice(LIST_PRICE, QUANTITY, CREDIT_LIMIT) %}
    case
        when {{ QUANTITY }} <= {{ CREDIT_LIMIT }}
        then {{ LIST_PRICE }}*{{ QUANTITY }}
        else ({{ LIST_PRICE }}*{{ QUANTITY }}) + 1000
    end
{% endmacro %}
