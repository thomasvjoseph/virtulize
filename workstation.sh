#!/bin/bash
sudo yum update -y --exclude=kernel
#install Ansible
sudo yum install epel-release -y
sudo yum install ansible -y
#Add user Ansible with Sudo
sudo adduser devops
echo 'devops ALL=(ALL) NOPASSWD: ALL' >> ./devops
sudo chown root:root ./devops
sudo mv ./devops /etc/sudoers.d/