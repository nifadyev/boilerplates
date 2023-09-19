#! /bin/bash

# To set F-keys to F1-12 instead of Fn keys, execute

cd ~/"System Tools"
git clone https://github.com/jergusg/k380-function-keys-conf.git
# For Fedora, check if it's necessary for fresh install
sudo dnf groupinstall "Development Tools"
cd k380-function-keys-conf
# Without sudo no permissions for `/usr/local/bin/k380_conf` and `/usr/local/bin/fn_on.sh`
# Which could be invalid
sudo make install
# Get hidraw number for keyboard
sudo ./fn_on.sh
# ! hidraw4 is from output from command above
sudo k380_conf -d /dev/hidraw4 -f on
# Switch auto on reconnect
sudo make reload
