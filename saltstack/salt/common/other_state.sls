#This is an included state that does other magic stuff

black_magic_Never_runs:
  cmd.run:
    - name: echo "I can't run, I don't have legs!"
    - unless: /bin/true

unicorns_always_run:
  cmd.run:
    - name: echo "{{ pillar['phrase'] }}"
    - unless: /bin/false
