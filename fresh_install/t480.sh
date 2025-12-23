# Fingerprint
sudo wget 'https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2937db010da51096cd4277ff8d4c774ba6d18f90' \
  -O /etc/apt/trusted.gpg.d/uunicorn.asc

echo 'deb [signed-by=/etc/apt/trusted.gpg.d/uunicorn.asc] https://ppa.launchpadcontent.net/uunicorn/open-fprintd/ubuntu kinetic main' \
  | sudo tee /etc/apt/sources.list.d/uunicorn-open-fprintd.list


sudo apt install open-fprintd fprintd-clients python3-validity

# Check if fingerprint is working
fprintd-enroll

# 
sudo nano /etc/pam.d/sudo

# Replace or add these lines at the top:
# Disallow fingerprint in sudo/su without tty (security mitigation)
auth [success=1 default=ignore] pam_succeed_if.so service in sudo:su:su-l tty in :unknown
auth sufficient pam_fprintd.so
auth include common-auth


# After installation, start the fingerprint services and enable them at boot:

# Start services
sudo systemctl start open-fprintd.service python3-validity.service

# Enable at boot
sudo systemctl enable open-fprintd.service python3-validity.service

# Verify services are running
sudo systemctl status open-fprintd.service python3-validity.service


# Handling Sleep and Hibernate Issues

# On resume from sleep or hibernation, the fingerprint daemon may fail to reinitialize properly. Create a systemd service to restart fingerprint services automatically:
sudo tee /etc/systemd/system/fingerprint-restart.service > /dev/null <<EOF
[Unit]
Description=Restart fingerprint services after suspend/hibernate
After=suspend.target hibernate.target hybrid-sleep.target suspend-then-hibernate.target

[Service]
Type=oneshot
ExecStart=/usr/bin/systemctl restart open-fprintd.service python3-validity.service

[Install]
WantedBy=suspend.target hibernate.target hybrid-sleep.target suspend-then-hibernate.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable fingerprint-restart.service
