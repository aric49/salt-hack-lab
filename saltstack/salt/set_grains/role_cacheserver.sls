#Sets role of a node to "webserver". This ensures that the role is always set to webserver incase it gets manually overwritten

Set Cache Server Role:
  grains.present:
    - name: role
    - value: cacheserver
