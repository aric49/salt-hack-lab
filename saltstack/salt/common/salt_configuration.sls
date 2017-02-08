#Manage the /etc/salt/minion file

verify_minion_running:
  pkg.installed:
    - pkgs:
      - salt-minion
      - python-pyinotify
  service.running:
    - name: salt-minion
    - enable: true
    - watch:
      - file: /etc/salt/minion.d/beacons.conf

manage_beacons:
  file.managed:
    - name: /etc/salt/minion.d/beacons.conf
    - source: salt://common/templates/beacons.conf.j2
    - template: jinja
