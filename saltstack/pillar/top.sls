base:
  '*':
    - default
  'minion[1-2]':
    - application1_pillar
  'minion[3-4]':
    - application2_pillar
