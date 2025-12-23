#! /bin/bash

# Find partition and copy its UUID (preferably, by label/SYSTEM)
sudo lsblk -f | grep ntfs
# Create mount folder with user permissions
mkdir ~/Storage
# TODO: wait for input here, uncomment commands below when it's done
# Append mount details
# echo 'UUID="<partition_uuid>" /home/<username>/Storage    ntfs-3g defaults    0 0' | sudo tee --append /etc/fstab
# Mount all partitions and check if NTFS partition is mounted correctly
# sudo systemctl daemon-reload
# sudo mount -a

# new for btrfs partition
sudo mkdir -p /mnt/data-temp
sudo mount UUID=... /mnt/data-temp

sudo btrfs subvolume create /mnt/data-temp/@storage
sudo chown -R $USER:$USER /mnt/data-temp/@storage
cd /mnt/data-temp/@storage/
mkdir Downloads
cd ~
sudo umount /mnt/data-temp
sudo nvim /etc/fstab
sudo systemctl daemon-reload
sudo mount -a
ls -lah
cd Storage

