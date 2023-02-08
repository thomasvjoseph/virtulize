#!/bin/bash

#Update OS
sudo yum update -y --exclude=kernel
#install Ansible
sudo yum install epel-release -y
sudo yum install ansible -y
#Add user Ansible with Sudo
sudo adduser -G wheel ansible
sudo sed -i 's/ALL=(ALL)       NOPASSWD: ALL/%wheel ALL=(ALL)       NOPASSWD: ALL/g' /etc/sudoers

# ip route get 1.2.3.4 | awk '{print $7}'> /home/list_of_servers

# ssh-keygen -t rsa
# for ip in `cat /home/list_of_servers`; do
#     ssh-copy-id -i ~/.ssh/id_rsa.pub $ip
# done

