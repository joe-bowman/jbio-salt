{% for site in salt.pillar.get('mkdocs_deploy:sites', []) %}
mkdocs_deploy_checkout_git_{{ site.name }}:
  git.latest:
    - name: {{ site.git }}
    - target: /tmp/mkdocs/{{ site.name|replace("/", "_") }}
    - rev: {{ site.commit }}

mkdocs_deploy_checkout_build_{{ site.name }}:
  cmd.run:
    - name: mkdocs build
    - cwd: /tmp/mkdocs/{{ site.name|replace("/", "_") }}

mkdocs_deploy_copy_{{ site.name }}:
  file.copy:
    - name: {{ site.path }}
    - source: /tmp/mkdocs/{{ site.name|replace("/", "_") }}/site
    - force: True
    - user: {{ site.get('user', 'root') }}
    - group: {{ site.get('group', 'root') }}
    - mode: 755
    - makedirs: True
    - recurse:
      - user
      - group
      - mode

{% endfor %}
