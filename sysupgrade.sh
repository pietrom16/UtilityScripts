#!/bin/bash

# System upgrade

# Pietro Mele 2023

DISTRO="artix"

echo
echo "Upgrading system: " $DISTRO
echo

if [[ $DISTRO -eq "artix" ]]
then
    # Ref.: https://wiki.artixlinux.org/Main/Troubleshooting#Invalid_or_corrupted_packages_.28PGP_signature.29
    # Ref.: https://wiki.archlinux.org/title/System_maintenance#Upgrading_the_system

    # 1. Reinstall keyrings including the latest keys
    sudo pacman -Sy archlinux-keyring artix-keyring
    # 2. Initialize the pacman keyring
    sudo pacman-key --init
    # 3. Load the signature keys
    sudo pacman-key --populate archlinux artix
    # 4. [Eventually] clear out the software packages downloaded during the aborted installation
    #sudo pacman -Scc
    #sudo pacman -Syyu
    # 5. Full system upgrade
    sudo pacman -Syu
fi



# Previous version:
#sudo pacman -Sy artix-keyring
#sudo pacman -Sy archlinux-keyring
#sudo pacman -Syu artix-archlinux-support
