apache:
  pkg:
    - name: 'apache2'
    - installed
  service:
    - name: 'apache2'
    - running
    - watch:
      - pkg: apache2

libapache2-mod-php5:
  pkg:
    - installed

  require:
    - pkg: apache2

