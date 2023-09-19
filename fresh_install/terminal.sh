# TODO: setup sound when command is finished

# Remove hostname and username from terminal prompt
# Source - https://www.maketecheasier.com/remove-user-hostname-terminal-prompt/

sudo cp ~/.bashrc ~/.bashrc_backup_$(date +"%Y%m%d%H%M")
# ! Not tested, replaced manually in .bashrc because there was no PS1 variable
sudo sed --in-place --expression 's/PS1='*'/PS1='[\W]\$ '/g'  ~/.bashrc
