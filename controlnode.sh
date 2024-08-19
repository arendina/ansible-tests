#!/bin/bash

#
# This will install ansible for the root user
#
# apt-get update # this is run from bootstrap.sh
apt-get -y install pipx
pipx install --include-deps ansible==2.10.7

# this can come handy
pipx ensurepath

# Create a new SSH keypair
ssh-keygen -t rsa -b 4096 -N "" -f ~/.ssh/id_rsa

# Disable host checking
mkdir -p /etc/ansible
cat << EOF > /etc/ansible/ansible.cfg
[defaults]
host_key_checking = False
EOF
