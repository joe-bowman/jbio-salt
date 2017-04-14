{%- from 'global/jbio.jinja' import jbio with context %}

base:
  '*':
    # Pillar for everything
    - global
    # Pillar for specific node types
    - {{ jbio.tech }}
    
