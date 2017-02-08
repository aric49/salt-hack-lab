
#Create Users in Servers
#TODO: Create Groups automatically

{% for user in pillar['users'] %}
Create Users and Deploy SSH Keys {{ user.name }}:
  user.present:
    - name: {{ user.name }}
    - fullname: {{ user.fullname }}
    - shell: {{ user.shell }}
    - createhome: true
    - empty_password: true
    {% if user.groups %}
    - optional_groups: {{ user.groups }}
    {% endif %}
  ssh_auth.present:
    - user: {{ user.name }}
    - enc: ssh-rsa
    - source: salt://user_accounts/public_keys/{{ user.name }}.pub
{% endfor %}


{% for user in pillar['removed_users'] %}
Delete old Users and Files {{ user.name }}:
  user.absent:
    - name: {{ user.name }}
    - purge: true
{% endfor %}
