{% test is_valid_length(model, column_name) %}

    select * from {{ model }} where length({{ column_name }}) > 30

{% endtest %}
