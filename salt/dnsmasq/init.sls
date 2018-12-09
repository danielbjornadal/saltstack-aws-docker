dnsmasq:
  pkg.installed:
    - install_recommends: true
  service.running:
    - enable: true


