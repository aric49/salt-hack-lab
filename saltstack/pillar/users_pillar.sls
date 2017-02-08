#Creates User Accounts and Deploys SSH Keys
users:
  - name: testuser1
    fullname: Test User 1
    email: testuser1@email.com
    shell: /bin/bash
    groups:
      - sudo
      - testgroup

  - name: testuser2
    fullname: Test User 2
    email: testuser2@email.com
    shell: /bin/bash
    groups:
      - sudo

  - name: testuser3
    fullname: Test User 3
    email: testuser3@email.com
    shell: /bin/bash
    groups:
      - sudo



removed_users:
  - name: testuser4
    fullname: Test User 4
    email: testuser4@email.com
    shell: /bin/bash
    groups:
      - sudo
