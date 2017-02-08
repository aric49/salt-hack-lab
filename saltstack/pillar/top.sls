base:
  '*':
    - default
    - users_pillar

#Deploys based on grain roles!
  'role:webserver':
    - match: grain
    - application1_pillar
  'role:cacheserver':
    - match: grain
    - application2_pillar
