# ArchInstall
## Pacman Mirror List
Update mirror list based on the top 10 servers (ranked by speed) for the UK, using reflector  
`pacman -S reflector`  
`sudo reflector --verbose --county 'united kingdom' -l 10 --sort rate --save /etc/pacman.d/mirrorlist`


## Application List
Here is a list of applications I use
  - Termite : Used as my terminal emulator
  - CMUS : Command line Music Player
  - mplayer : Command line Video/Media Player
  - Ranger : Command line File Manager


## WM
I use i3wm as my window manager  
`pacman -S i3 i3status i3blocks i3lock`  
`pacman -S xorg xorg-server xorg-xinit xorg-xrandr mesa`  
`echo "exec i3" >> ~/.xinitrc`  
I use dmenu as well for my application launcher  
`pacman -S dmenu`  


## Greeter
LightDM install as my greeter  
`pacman -S lightdm lightdm-gtk-greeter`
`sudo systemctl enable lightdm.service`  

## Networking
Enable DHCP on your ethernet connection  
`systemctl enable dhcpcd@enp0s25`  
Wifi bits  
`pacman -S dialog wpa_supplicant wpa_actiond`
Bluetooth  
`pacman -S bluez bluez-utils`


## Users
I like to set up a new group and use that for my sudoers  
`groupadd sudoers`  
add `%sudoers ALL=(ALL) ALL)` to visudo  
`useradd -m -g sudoers siopsys`  
-m will make the home directory 


## AUR
I use the user repo a lot, I have started to manually install these packages but a wrapper is still nice. I use aurman  
`git clone https://aur.archlinux.org/aurman.git`  
`cd aurman`  
`makepkg -si`  


## Addons for Ranger
A full list can be found on the package page for ranger  
`pacman -S atool elinks ffmpegthumbnailer poppler w3m transmission-cli mediainfo odt2txt`  


## Font/Themes
Linux Libertine  
`pacman -S ttf-linux-libertine ttf-linux-libertine-g`  
papirus icons  
`pacman -S papirus-icon-theme`  
numix theme  
`pacman -S numix-gtk-theme`  

## VIM
Need vundle for vim plugins  
`aurman -S vundle`  
