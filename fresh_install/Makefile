# TODO: run chmod +x on init and revoke after it
# TODO: reorder (because some commands depend on each other)

init:
	make grant-exec-permission
	# inits and installs
	make install-docker
	make arrow_keys
	make ntfs_automount
	make deb-packages
	make change_default_dirs_path
	make setup-app-images
	make setup-terminal
	make revoke-exec-permission

init-debian:
	make grant-exec-permission
	# To store history from the beginning
	make setup-terminal
	make mount-storage-partition
	make change-default-dirs-path
	# Setup apt repos if none
	make install-deb-packages
	make install-docker
	make arrow_keys
	make setup-app-images
	# make setup-git
	# make remove-irrelevant - kde apps, build deps
	make revoke-exec-permission

grant-exec-permission:
	chmod +x *.sh

revoke-exec-permission:
	chmod -x *.sh

install-docker:
	./docker.sh

init-asusctl:
	./asusctl.sh

init-terminal:
	./terminal.sh

setup-fn-keys-bt-keyboard:
	./logitech_k380.sh

install-dnf-packages:
	./dnf_packages.sh

install-flatpak-packages:
	./flatpak_packages.sh

install-auto-cpufreq:
	./auto-cpufreq.sh

init-3rd-level-arrow-keys:
	./arrow_keys.sh

change-default-dirs-path:
	./change_default_dirs_path.sh

setup-daily-backup:
	./backup_restic_yadisk.sh

# init-git:

block-urls-systemwide:
	echo "another-it.ru" >> /etc/hosts
