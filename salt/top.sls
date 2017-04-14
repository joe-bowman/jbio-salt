base:
  '*':
    {%- for role in salt.pillar.get('roles', []) %}
    - {{ role }}
    {%- endfor %}

