#This is an SLS to test Event firing!

Ensure_package_gettext_installed:
  pkg.installed:
    - name: gettext-base
#    - fire_event: True
    - fire_event: gettext/installed
