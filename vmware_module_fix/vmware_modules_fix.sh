#! /bin/bash

# Fix vmware modules (vmmon, vmnet)
# See INSTALL for more details in vmware-host-modules folder
# (~/Programs/system_scripts/vmware-modules_fix/vmware-host-modules)
#
# Git repository: git clone https://github.com/Technogeezer50/vmware-host-modules.git


# This script is intended to be run as root

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    echo "Run as root boy"
    exit 1
fi

REPO="https://github.com/Technogeezer50/vmware-host-modules.git"

# Check current VMware Workstation Pro version:
VMVER="workstation-"$(vmware --version | awk '{print $3}')

# Clone & build repo:
git clone https://github.com/Technogeezer50/vmware-host-modules.git
cd vmware-host-modules

# Change to VMware version branch:
git checkout $VMVER

# Build modules:
make && make install

# Restart VMware daemon:
sudo /etc/init.d/vmware restart

exit 0
