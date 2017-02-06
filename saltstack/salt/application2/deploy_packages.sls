#Deploy memcached packages

Deploy_memcached:
  pkg.installed:
    - name: memcached
  service.running:
    - name: memcached
    - enable: true
    - watch:
      - file: /etc/memcached.conf
