#!/usr/bin/env bash

# vagrant provisionning file for a fedora24-cloud
# to run a typo3 instance

# making sure everyting is upto date.
dnf update

# making sure we have an easy time inside the machine
dnf install -y git
dnf install -y vim-enhanced
dnf install -y wget
dnf install -y curl
dnf install -y htop

# typo3 php pre-reqs
dnf install -y php-common
dnf install -y php-mysqli
dnf install -y php-zlib
dnf install -y php-pecl-apcu-devel
dnf install -y freetype

# mariadb instead of mysql (fedora deprecates mysql infavor of maria)
dnf install -y mariadb-server
dnf install -y mariadb


# our lifting engine - port forwarding inside Vagrantfile
dnf install -y nginx

# services init
systemctl enable mariadb.service
systemctl start mariadb.service
systemctl enable nginx.service
systemctl start nginx.service

#directory layout, links and permissions.

if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
