docker_repo:
  pkgrepo.managed:
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable
    - key_url: https://download.docker.com/linux/ubuntu/gpg

docker_dependencies:
  pkg.installed:
    - pkgs:
      - apt-transport-https
      - ca-certificates
      - curl 
      - software-properties-common

docker:
  pkg.installed:
    - name: docker-ce
    - version: 18.06.1~ce~3-0~ubuntu
    - hold: true
  service.running:
    - name: docker
    - enable: true
