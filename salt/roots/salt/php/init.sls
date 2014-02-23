php5:
  pkg:
    - installed

php5-mysql:
  pkg:
    - installed

/etc/php5/apache2/php.ini:
  file.replace:
    - pattern: ';\s*extension=msql.so'
    - repl: 'extension=msql.so'

  require:
    - pkg: php5-mysql