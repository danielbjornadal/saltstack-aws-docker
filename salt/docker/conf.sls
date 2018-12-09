include:
  - docker

daemon_json:
  file.managed:
    - name: /etc/docker/daemon.json
    - source: salt://docker/files/daemon.json
    - template: jinja
    - watch_in:
      - service: docker