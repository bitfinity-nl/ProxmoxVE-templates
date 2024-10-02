# Howto use

1. Create a new Virtual Machine and install Ubuntu and shutdown the virtual machine.
2. Add an "EFI Disk" in ProxmoxVE and startup the virtual machine via ProxmoxVE gui.
3. Login the Virtual Machine and download to /tmp/convert-ubuntu-2-template.sh in the virtual machine: `wget https://raw.githubusercontent.com/bitfinity-nl/ProxmoxVE-templates/refs/heads/main/ubuntu-2404-lts/files/convert-ubuntu-2-template.sh -O /tmp/convert-ubuntu-2-template.sh`
4. Run the bash script from with sudo permissions in the virtual machine: `bash /tmp/convert-ubuntu-2-template.sh`
5. Set networksettings to DHCP for the virtual machine with Cloud-init via ProxmoxVE gui: `Cloud-Init`, `IP Config (net0)`, `DHCP`
6. Regenerate the Cloud-init image for the virtual machine via ProxmoxVE gui: `Cloud-Init`, `Regenerate-Image`
7. Convert Virtual Machine to template via ProxmoxVE gui: `Right click on virtual machine`, select `convert to template`, confirm `yes`

