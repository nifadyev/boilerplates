# TODO: run chmod +x on init and revoke after it
# TODO: reorder (because some commands depend on each other)

# init:
# 	make grant-exec-permission
# 	# inits and installs
# 	make revoke-exec-permission

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
