{% macro ChangeSchema(NewSchemaName) %}
    {% set current_schema = target.schema %}
    {% set NewSchema = NewSchemaName %}
    {% do retun(NewSchema) %}
{% endmacro %}
