#!/usr/bin/env bash

# Update apt-get
apt-get update -y

# Update Ubuntu
apt-get -y upgrade
apt-get -y dist-upgrade

# Install Apache
apt-get install -y apache2 apache2-utils

# Support for dynazoom, which allows us to zoom into graphs
apt-get install -y libcgi-fast-perl libapache2-mod-fcgid

/vagrant/munin.sh
