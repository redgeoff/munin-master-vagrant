# munin-master-vagrant

A quick way to get a Munin master server set up

TODO: Details about protecting with htaccess and configuring plugins


Install Vagrant, VirtualBox and git
---

    http://www.vagrantup.com
    https://www.virtualbox.org (don't worry about setting up any VMs as the steps below will cover this)
    http://git-scm.com


Set up
---

    Edit /etc/hosts locally and add `192.168.50.18 munin.dev`
    $ git clone https://github.com/redgeoff/munin-vagrant.git
    $ cd ubuntu-vagrant
    $ vagrant up
    Visit http://munin.dev/munin # Note: you may have to wait 5 mins for munin to run and initialize the files


Sources:
---

The majority of the content used to create this repo came from https://www.digitalocean.com/community/tutorials/how-to-install-the-munin-monitoring-tool-on-ubuntu-14-04
