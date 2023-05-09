#!/bin/bash

# Create new user

sudo useradd -m krishna

# Set Password
echo 'krishna:newPassword' | sudo chpasswd

# Change shell
sudo chsh -s /bin/bash krishna

# Add user to sudo group
sudo usermod -aG sudo krishna

# Grant passwordless sudo access to user
echo "krishna ALL=(ALL:ALL) ALL" >> sudo /etc/sudoers
