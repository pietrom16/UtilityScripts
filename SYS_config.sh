#!/bin/bash

# SYS_config.sh

# Howto: append the following lines to .profile:
#		#[PM]
#		if [ -f ~/config/SYS_config.sh ]; then
#			source ~/config/SYS_config.sh
#		fi

echo "Custom profile configuration"


# -- Create ramdisks

# Create a private directory in the `/dev/shm` ramdisk, and link it in my home directory
# Note: executables will not be launched from here.
RAMDISK_PATH=/dev/shm/$USER
mkdir $RAMDISK_PATH
chmod u=rwx,g=---,o=--- $RAMDISK_PATH
ln -s $RAMDISK_PATH ~/ramdisk

# Create another ramdisk with execute permissions
# Reference: https://www.linuxbabe.com/command-line/create-ramdisk-linux
RAMDISK_EXE_PATH=~/ramdisk_exe
#mkdir -p $RAMDISK_EXE_PATH
#chmod u=rwx,g=-,o=- $RAMDISK_EXE_PATH
#sudo mount -t tmpfs -o size=100m -o exec tmpfs $RAMDISK_EXE_PATH

# -- Default executables

# Give priority to tools installed in /opt
PATH=/opt:$PATH
PATH=/home/pietrom/.local/share/gem/ruby/3.0.0/bin:$PATH

# Give priority to tools installed in /home/custom_apps
PATH=/home/custom_apps:$PATH

# -- Default compiler

if [ -f ~/config/set-clang.sh ]; then
	source ~/config/set-clang.sh
fi

#if [ -f ~/config/set-gcc.sh ]; then
#	source ~/config/set-gcc.sh
#fi



#---------------------------------
#[PM] - Pietro Mele 2018/2019/2023
