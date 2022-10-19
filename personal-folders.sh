#!/bin/bash

# Change default folders to OneDrive
CONFIG_FILE="/home/gimca/.config/user-dirs.dirs"
OLD='$HOME'
NEW='/home/gimca/Insync/gimtsas@hotmail.com/OneDrive'
sed -i -e "s|$OLD|$NEW|g" $CONFIG_FILE
OLD='/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Downloads'
NEW='$HOME/Downloads'
sed -i -e "s|$OLD|$NEW|g" $CONFIG_FILE
OLD='/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Public'
NEW='/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/toShare'
sed -i -e "s|$OLD|$NEW|g" $CONFIG_FILE
# Remove old folders
sudo rm -r "/home/gimca/Desktop"
sudo rm -r "/home/gimca/Templates"
sudo rm -r "/home/gimca/Public"
sudo rm -r "/home/gimca/Documents"
sudo rm -r "/home/gimca/Music"
sudo rm -r "/home/gimca/Pictures"
sudo rm -r "/home/gimca/Videos"
# Create symlinks
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Desktop" "/home/gimca/Desktop"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Templates" "/home/gimca/Templates"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/toShare" "/home/gimca/Public"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Documents" "/home/gimca/Documents"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Music" "/home/gimca/Music"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Pictures" "/home/gimca/Pictures"
ln -s "/home/gimca/Insync/gimtsas@hotmail.com/OneDrive/Videos" "/home/gimca/Videos"
