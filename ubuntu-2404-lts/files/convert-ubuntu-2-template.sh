#!/bin/bash
#
#Title: Ubuntu Template
#
# Author: Bitfinity / L. Rutten
# Owner: Bitfinity / L. Rutten
#
# File: ubuntu-2404-lts/files/convert-ubuntu-2-template.sh
#
# Description:
#   This bash script contains the steps to prepare Ubuntu for a ProxmoxVE template with cloudinit.
#
# Supported version(s):
#   - Ubuntu 24.04LTS

# 1. Update and install APT-packages.
apt update && sudo apt upgrade -y 
apt install -y nano qemu-guest-agent
systemctl enable qemu-guest-agent

# 2. Reset hostname to localhost.
truncate -s0 /etc/hostname

# 3. Reset the machine-id.
truncate -s0 /etc/machine-id

# 4. Remove cloud-init artifact.
cloud-init clean

# 5. Remove password(s) from administrative accounts. 
passwd -dl root

# 6. Clear shell history.
truncate -s0 ~/.bash_history
history -c

# 7. Remove dependencies who are no longer in use and clean packages and install script.
apt -y autoremove && apt clean

# 8. Shutdown system.
shutdown -h now
