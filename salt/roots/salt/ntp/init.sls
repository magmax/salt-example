ntp:
  pkg:
    - installed
    - name: ntpdate
  service:
    - name: ntp
    - running
    - watch:
      - pkg: ntpdate
