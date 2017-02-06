# Deploy memached config

Deploy memached config file:
  file.managed:
    - name: /etc/memcached.conf
    - source: salt://application2/templates/memcached.conf.j2
    - template: jinja
