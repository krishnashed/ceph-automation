#!/bin/bash

echo 'root:password' | sudo chpasswd

sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

sudo systemctl restart ssh.service
