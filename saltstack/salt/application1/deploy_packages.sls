#Deploy Application packages

Install_NGINX:
  pkg.installed:
    - name: nginx
  service.running:
    - name: nginx
    - enable: true
    - watch:
      - file: /etc/nginx/nginx.conf
      - file: /etc/nginx/sites-available/default
