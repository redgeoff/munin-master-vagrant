#!/usr/bin/env bash

# Change to script directory
sd=`dirname $0`
cd $sd

# Install Munin
apt-get install -y munin

# Configure directories
echo "dbdir /var/lib/munin" >> /etc/munin/munin.conf
echo "htmldir /var/cache/munin/www" >> /etc/munin/munin.conf
echo "logdir /var/log/munin" >> /etc/munin/munin.conf
echo "rundir /var/run/munin" >> /etc/munin/munin.conf
echo "tmpldir /etc/munin/templates" >> /etc/munin/munin.conf

# Change name of main tree
sed -i "s'localhost.localdomain'MuninMaster'" /etc/munin/munin.conf

# Configure Apache
cp apache.conf /etc/munin

# Restart Apache and Munin
service apache2 restart
service munin-node restart
