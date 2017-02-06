#Sets role of a node to "webserver". This ensures that the role is always set to webserver incase it gets manually overwritten

Set Web Server Role:
  grains.present:
    - name: role
    - value: webserver
