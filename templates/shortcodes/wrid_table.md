
{% set data = load_data(path="static/data/wrid_data.json") %}

{% if prefix %}
    {% set pattern = "^" ~ prefix ~ ">[^>]*$" %}
    {% set filtered_data = [] %}
    {% for wrid in data %}
        {% if not prefix or wrid.WRID is matching(pattern) %}
        {% endif %}
    {% endfor %}
{% else %}
    {% set pattern = "" %}
{% endif %}


{% set literal_in_pattern = false %}
{% set has_literal = data | filter(attribute="literal_value") %} 
{% for item in has_literal %}
  {% if not prefix or item.WRID is matching(pattern) %}
{% set_global literal_in_pattern = true %}
  {% endif %}
{% endfor %}


<table>
  <thead>
    <th>Name</th>
    <th>Bytes</th>
    <th>Type</th>
    {%- if literal_in_pattern %}<th>literal</th>{% endif -%}
    <th>Description</th>
    <th>WRID</th>
  </thead>
<tbody>
{% for wrid in data %}
  {% if not prefix or wrid.WRID is matching(pattern) %}
  <tr>
    <td>{{ wrid.name}}</td>
    <td>{{ wrid.bytes}}</td>
    <td>{{ wrid.type}}</td>
    {%- if literal_in_pattern %} <td>{{ wrid.literal_value}}</td> {% endif %}
    <td>{{ wrid.desc}}</td>
    <td class="WRID">{{ wrid.WRID }}</td>
  </tr>
  {% endif %}
{% endfor %}
</tbody>
</table>

