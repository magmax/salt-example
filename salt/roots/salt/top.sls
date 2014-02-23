base:
  'salt-example':
    - ntp
    - mysql.client
    - mysql.server
    - apache
    - php
    - php-example
    - logrotate