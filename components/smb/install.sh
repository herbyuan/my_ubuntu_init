#!/bin/bash

echo "installing samba"

sudo apt update > /dev/null
sudo apt install -y samba
sudo apt install -y avahi-daemon
sudo apt install -y samba-vfs-modules

echo "samba installed"
echo "check /etc/samba/smb.conf for configuration"

sudo smbpasswd -a $USER

# list all smb users
sudo pdbedit -L

cat /etc/samba/smbpasswd





