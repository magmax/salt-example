salt-client:
  pkg:
    - installed
    - name: salt-minion
  service:
    - running
