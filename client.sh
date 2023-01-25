#!/bin/bash
#update OS
sudo yum update -y --exclude kernel
sudo yum install epel-release -y
#install python
sudo yum install python3
#Add user with sudo permissions
sudo adduser devops
echo 'devops ALL=(ALL) NOPASSWD: ALL' >> ./devops
sudo chown root:root ./devops
sudo mv ./devops /etc/sudoers.d/