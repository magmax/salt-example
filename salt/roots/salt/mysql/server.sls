mysql-server:
  pkg:
    - installed
    - pkgs:
      - mysql-server

  service:
    - running
    - name: mysql
    - enable: True
    - require:
      - pkg: mysql-server

# Taken from https://github.com/saltstack/salt/issues/5918
set-mysql-root-password:
  cmd.run:
  - name: 'echo "update user set password=PASSWORD(''secret'') where User=''root'';flush privileges;" | /usr/bin/env HOME=/ mysql -uroot mysql'
  - onlyif: 'echo | /usr/bin/env HOME=/ mysql -u root'
  - require:
    - service: mysql-server
    - pkg: mysql-client
