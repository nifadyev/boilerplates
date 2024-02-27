# TODO: chmod +x for sh files
# TODO: move service and timers to .config/systemd/user
# TODO: systemctl --user enable/start service/timer


help:
	echo 1

install:
	echo 2

run-transmission:
	# Echo variables from file
	# readarray -t a < volume_paths.env && echo "${a[@]}"
	# (xargs < volume_paths.env)
	CONFIG_PATH=<path_to_config_directory> \
	DOWNLOAD_PATH=<path_to_download_directory> \
	MEDIA_PATH=<path_to_jellyfin_media_directory> \
	docker compose up -d

run-jellyfin:
	# Echo variables from file
	# readarray -t a < volume_paths.env && echo "${a[@]}"
	# (xargs < volume_paths.env)
	CONFIG_PATH=<path_to_config_directory> \
	MEDIA_PATH=<path_to_media_directory> \
	docker compose up -d

    # Run under non-root user
	# docker compose run --user $(id -u):$(id -g) -d jellyfin

init-nextcloud:
	# TODO: wait for input and write it to file
	# ! Better - read them from .env if Makefile supports this
	touch postgres_nextcloud_password.txt

run-pihole-unbound-wg-easy:
	docker compose --env-file .env --env-file <path_to_.env_file> up -d

init-backup:
	touch repo_password.txt
	chmod +x backup/*.sh

get-user-ids:
	id --user - uid
	id --group - gid
	store them in variables and write in .env files

init-vaultwarden:
	# For backups
	sudo apt install sqlite3
	# TODO: add env variables example to end of backup/env.conf
	cp backup/vaultwarden-backup.service ~/.config/systemd/user/vaultwarden-backup.service
	cp backup/vaultwarden-backup.timer ~/.config/systemd/user/vaultwarden-backup.timer
	# systemctl --user enable vaultwarden-backup.service
