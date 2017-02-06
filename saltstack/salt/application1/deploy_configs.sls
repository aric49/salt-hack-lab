#Deploy NGINX conf
Deploy_NGINX.conf:
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://application1/templates/nginx.conf.j2
    - template: jinja

Deploy_sites_default:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://application1/templates/sites_available_default.conf.j2
    - template: jinja
