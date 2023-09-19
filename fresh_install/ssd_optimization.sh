#! /bin/bash

# Disable SWAP
echo "0" | sudo tee -a /proc/sys/vm/swappiness
sudo sysctl -p

# Add SSD specific options to BTRFS partitions
# Source Reddit - https://www.reddit.com/r/btrfs/comments/r04i0l/ideal_mount_options_for_ssd/
# Source Debian Wiki - https://wiki.debian.org/SSDOptimization
sudo cp /etc/fstab /etc/fstab_backup_$(date +"%Y%m%d%H%M")
# Manually change to something like this for each partition
# UUID=<uuid> /                       btrfs   ssd,noatime,subvol=@        0 0
