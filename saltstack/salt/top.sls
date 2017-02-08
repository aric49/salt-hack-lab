# This topfile deploys some simple applications and packages on four vagrant nodes
# so you can quickly have a working salt infrastructure up and running.  These are
# mainly examples of CM related tasks: deploying config files, restarting services
# and installing packages!

base:
  '*': #Run on all nodes!
    - common
    - user_accounts

#Sets Roles!
  'minion[1-2]':
    - set_grains.role_webserver
  'minion[3-4]':
    - set_grains.role_cacheserver

#Deploys based on grain roles!
  'role:webserver':
    - match: grain
    - application1
  'role:cacheserver':
    - match: grain
    - application2
