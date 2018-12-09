include:
  - dnsmasq

dnsmasq_conf:
  file.managed:
    - name: /etc/dnsmasq.conf
    - source: salt://dnsmasq/files/dnsmasq.conf
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: dnsmasq

resolv_dnsmasq:
  file.managed:
    - name: /etc/resolv.dnsmasq
    - source: salt://dnsmasq/files/resolv.dnsmasq
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: dnsmasq

