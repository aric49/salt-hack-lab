#Installs Packages

Update_all_packages:
  pkg.uptodate:
    - refresh: true

common_packages:
  pkg.installed:
    - pkgs:
      - htop
      - strace
      - vim
      - curl
      - clamav
