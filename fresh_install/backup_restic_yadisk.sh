#! /bin/bash

# 1. Install rclone and restic
sudo -v ; curl https://rclone.org/install.sh | sudo bash
rclone config
# {
#     "yadisk": {
#         "token": "{\"access_token\":\"<token>\",\"token_type\":\"OAuth\",\"refresh_token\":\"<refresh_token>\",\"expiry\":\"<expiry>\"}",
#         "type": "yandex"
#     }
# }
# restic -r rclone:yadisk:<yadisk_backup_folder> . --exclude=<exclude_paths>
# TODO: provide password via file or arg option
restic --repo rclone:yadisk:<yadisk_backup_folder> init
restic --repo rclone:yadisk:<yadisk_backup_folder> backup --exclude Storage --exclude .cache --exclude .local/share/Steam/steamapps --exclude AppImages .
# 2. Setup systemd services and timers
# TODO: input username and full path to current folder (or user PWD)
# ! Not working, invalid paths
cp ../laptop-linux-backup/laptop-linux-backup.service ~/.config/systemd/user/laptop-linux-backup.service
cp ../laptop-linux-backup/laptop-linux-backup.timer ~/.config/systemd/user/laptop-linux-backup.timer
systemctl --user enable laptop-linux-backup.service
systemctl --user start laptop-linux-backup.service
# Verify
systemctl --user list-timers --all
