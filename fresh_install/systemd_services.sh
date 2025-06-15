cp services to ~/.config/systemd/user/
systemctl --user enable *.service
systemctl --user start *.service
systemctl --user enable *.timer
