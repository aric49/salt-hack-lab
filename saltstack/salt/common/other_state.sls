#This is an included state that does other magic stuff
#Register Date:
{% set date_time = salt.cmd.run('date') %}
{% set hostname = salt['grains.get']('host') %}

#Testing Conditionals
rocks_Never_run:
  cmd.run:
    - name: echo "I can't run, I don't have legs!"
    - unless: /bin/true

unicorns_always_run:
  cmd.run:
    - name: echo "{{ pillar['phrase'] }}"
    - unless: /bin/false

#Log date of last salt execution and state version
log_salt_execution:
  file.append:
    - name: /var/log/salt_run.log
    - text: "Salt Execution ({{ hostname }}): {{ date_time }} - Salt State Version: {{ pillar['state_version'] }}"
