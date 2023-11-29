# VSCODE
sudo apt update && sudo apt upgrade -y
sudo snap install --classic code # or code-insiders
# GIT
sudo apt install git -y
git config --global user.email "gimtsas@hotmail.com"
git config --global user.name "George Gkimtsas"
# DOCKER
sudo apt update -y
sudo apt install ca-certificates curl gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y
# EDGE
sudo apt install apt-transport-https ca-certificates curl software-properties-common wget -y
sudo wget -O- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/microsoft-edge.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-edge.gpg] https://packages.microsoft.com/repos/edge stable main' | sudo tee /etc/apt/sources.list.d/microsoft-edge.list
sudo apt update -y
sudo apt install microsoft-edge-stable -y
# COMMS
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo apt install ./viber.deb -y
# sudo snap install --classic skype
# sudo snap install teams-for-linux
# sudo snap install discord
sudo snap install rambox
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update
sudo apt install signal-desktop -y
# INSYNC
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo bash -c 'echo "deb http://apt.insync.io/ubuntu jammy non-free contrib" >> /etc/apt/sources.list.d/insync.list'
sudo apt-get update
sudo apt install insync -y
# Python
sudo apt install python3-pip python3-venv -y
# Postgres
sudo apt install postgresql postgresql-contrib postgis -y
# DBeaver
sudo  wget -O /usr/share/keyrings/dbeaver.gpg.key https://dbeaver.io/debs/dbeaver.gpg.key
echo "deb [signed-by=/usr/share/keyrings/dbeaver.gpg.key] https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get update && sudo apt-get install dbeaver-ce
# SQLite
sudo apt install sqlite3 -y
# Anydesk
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install anydesk -y
# VPN 
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)
sudo apt install wireguard resolvconf -y
# Install apps
sudo apt install gnome-tweaks gnome-shell-extensions -y
sudo apt install qgis librecad -y
sudo apt install gparted virtualbox clamtk pdfarranger xsane imagemagick -y
sudo snap install onlyoffice-desktopeditors obs-studio vlc spotify freetube
# windows burner
#sudo add-apt-repository ppa:tomtomtom/woeusb -y
#sudo apt update -y; sudo apt upgrade -y;
#sudo apt install woeusb woeusb-frontend-wxgtk -y
# Languages
# sudo apt-get install language-pack-el language-pack-gnome-el language-pack-el-base language-pack-gnome-el-base
# Remove apps
sudo apt remove --purge libreoffice* -y
sudo apt remove --purge thunderbird* -y
sudo apt purge gnome-sudoku gnome-mines gnome-mahjongg aisleriot remmina evince ubuntu-report popularity-contest apport whoopsie rhythmbox -y
sudo apt purge simple-scan -y
# Final update
sudo apt update -y
sudo apt upgrade -y
sudo apt clean
sudo apt autoremove -y
sudo apt autoclean -y
