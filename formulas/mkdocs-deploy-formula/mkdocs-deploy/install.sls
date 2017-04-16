mkdocs_deploy_ensure_python_pip:
  pkg.installed:
    - pkgs:
      - python
      - python-pip

mkdocs_deploy_ensure_mkdocs:
  pip.installed:
    - name: mkdocs

mkdocs_deploy_ensure_mkdocs-bootstrap:
  pip.installed:
    - name: mkdocs-bootstrap

mkdocs_deploy_ensure_mkdocs-bootswatch:
  pip.installed:
    - name: mkdocs-bootswatch

