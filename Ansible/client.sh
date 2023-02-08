#!/bin/bash

#update OS
sudo yum update -y --exclude kernel
#install python
sudo yum install python3
#Add user with sudo permissions
sudo adduser -G wheel ansible
sudo sed -i 's/ALL=(ALL)       NOPASSWD: ALL/%wheel ALL=(ALL)       NOPASSWD: ALL/g' /etc/sudoers