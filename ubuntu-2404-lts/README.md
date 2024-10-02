# Howto use

1. Create a new Virtual Machine and install Ubuntu and shutdown the virtual machine.
2. Add an "EFI Disk" in ProxmoxVE and startup the virtual machine via ProxmoxVE gui.
3. Login the Virtual Machine and download to /tmp/convert-ubuntu-2-template.sh in the virtual machine: `git clone https://github.com/bitfinity-nl/ProxmoxVE-templates.git /tmp/`
4. Run the bash script from with sudo permissions in the virtual machine: `sudo /tmp/convert-ubuntu-2-template.sh`
5. Set networksettings to DHCP for the virtual machine with Cloud-init via ProxmoxVE gui: `Cloud-Init`, `IP Config (net0)`, `DHCP` (and VLAN tag)
6. Regenerate the Cloud-init image for the virtual machine via ProxmoxVE gui: `Cloud-Init`, `Regenerate-Image`
7. Convert Virtual Machine to template via ProxmoxVE gui: `Right click on virtual machine`, select `convert to template`, confirm `yes`

