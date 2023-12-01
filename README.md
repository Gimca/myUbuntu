# Setup Linux

## Contents

- [Setup Linux](#setup-linux)
  - [Contents](#contents)
  - [post-installation.sh](#post-installationsh)
  - [themes.sh](#themessh)
  - [personal-folders.sh](#personal-folderssh)
  - [Additional drivers](#additional-drivers)
    - [drivers.sh](#driverssh)
    - [Printers](#printers)
  - [Other](#other)
    - [Setup outlook exchange](#setup-outlook-exchange)
    - [Setup Firefox](#setup-firefox)

## post-installation.sh

Setup apps.

## themes.sh

Setup icons and theme.

## personal-folders.sh

Run personal-folders.sh after onedrive sync is complete.

## Additional drivers

### drivers.sh

Install specific drivers

### Printers

- cnijfilter-mx470series-4.10-1-deb.tar.gz
- linux-brprinter-installer-2.2.3-1.gz

### eGPU

[Guide](https://gist.github.com/valteu/1c0a9b7288cc3d77a6654a4d22d0ce9f) | [Source](https://github.com/hertg/egpu-switcher) | [Binaries](https://github.com/hertg/egpu-switcher/releases)

1. install nvidia driver:

        sudo apt-get install nvidia-driver-535-open

2. reboot
3. install eGPU switcher:

        sudo cp Downloads/myUbuntu-main/egpu-switcher-amd64 /opt/egpu-switcher
        sudo chmod 755 /opt/egpu-switcher
        sudo ln -s /opt/egpu-switcher /usr/bin/egpu-switcher
        sudo egpu-switcher enable

4. select eGPU
5. reboot
6. add Kernel parameter
  - Open grub file
        
        sudo nano /etc/default/grub

  - change line GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" to GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nvidia.NVreg_OpenRmEnableUnsupportedGpus=1"
  - **Update grub**

        sudo update-grub

7. reboot

## Other

### Setup outlook exchange

[Guide](https://stackoverflow.com/questions/65410453/add-outlook-calendar-to-gnome-calendar-ubuntu-20-10)

| field | value |
| ----- | ----- |
| email | someone@somewhere.com |
| password | https://account.live.com/proofs/manage/additional?mkt=en-US&refd=account.microsoft.com&refp=security
| username | someone@somewhere.com |
| server | outlook.office365.com |

### Setup Firefox

[Guide](https://www.youtube.com/watch?v=Qltekbt0K58&ab_channel=EasyOSX)

- about:config
  - about:config toolkit.legacyUserProfileCustomizations.stylesheets >> True
- about:support
  - Open Profile Directory
    - Copy chrome/userChrome.css

### Gnome extensions

- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
- [Logo Menu](https://extensions.gnome.org/extension/4451/logo-menu/)
- [Places](https://extensions.gnome.org/extension/8/places-status-indicator/)
- [Extension List](https://extensions.gnome.org/extension/3088/extension-list/)
- [Lock keys](https://extensions.gnome.org/extension/1532/lock-keys/)
