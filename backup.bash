#!/bin/bash
# Author: Jason Carman; jasonmcarman@gmail.com
# Date: October 13, 2024
# Purpose: Backup my Ubuntu VMs for OSL645 and OSL745
# Usage: ./backup.bash
#

# Check if the user is root
if [[ $(whoami) != "root" ]]; then
    echo "You must be root to run this script."
    exit 1
fi

# Check if the source exits
if [[ ! -d /media/candice/KINGSTON/OSL645/Ubuntu-jmcarman/ ]]; then
    echo "The source directory does not exist."
    exit 2
fi

# Check if the destination exists
if [[ ! -d /mnt/FA4E05CC4E05831D/Documents/Jason\ Documents/Backups ]]; then
    echo "The destination directory does not exist."
    exit 3
fi

# Copy the source to the destination
cp -r /media/candice/KINGSTON/OSL645/Ubuntu-jmcarman/ /mnt/FA4E05CC4E05831D/Documents/Jason\ Documents/Backups/