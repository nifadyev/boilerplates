#! /bin/bash

# Find partition and copy its UUID (preferably, by label/SYSTEM)
sudo lsblk -f | grep ntfs
# Create mount folder with user permissions
mkdir ~/Storage
# TODO: wait for input here, uncomment commands below when it's done
# Append mount details
# echo 'UUID="<partition_uuid>" /home/<username>/Storage    ntfs-3g defaults    0 0' | sudo tee --append /etc/fstab
# Mount all partitions and check if NTFS partition is mounted correctly
# systemctl daemon-reload
# sudo mount -a
