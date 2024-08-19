#!/bin/bash

apt-get update
apt-get -y install vim

cp -v /vagrant/hosts /etc/hosts

# update root password: do that only if you play! Never on serious systems!
echo -e 'Passw0rd\nPassw0rd\n' | passwd

# Enable ssh with root user (needed for ssh-copy-id)
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/'
service ssh restart
