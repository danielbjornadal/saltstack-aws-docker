include:
  - audit

logrotate_conf:
  file.managed:
    - name: /etc/logrotate.conf
    - source: salt://audit/files/logrotate.conf
    - user: root
    - group: root
    - mode: 644

logrotate_d:
  file.recurse:
    - name: /etc/logrotate.d
    - source: salt://audit/files/logrotate.d
    - user: root
    - group: root
    - file_mode: 644
    - dir_mode: 755

