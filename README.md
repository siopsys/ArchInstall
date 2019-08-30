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
  - Zathura : Lightweight PDF reader
  - Firefox : Web Browser
  - Spotify : Online Music/Podcast
  - Steam : Gaming platform
  - Calibre : eBook/PDF organiser (Rather heavy but it is nice)
  - Flameshot : Screenshots, best tool around for it!

## WM
I use i3wm as my window manager    
`pacman -S i3-wm i3status i3lock`  
`pacman -S xorg xorg-server xorg-xinit xorg-xrandr`  
`echo "exec i3" >> ~/.xinitrc`  
I use Rofi as my application launcher with dmenu as a fallback  
`pacman -S rofi dmenu`  

## Greeter
LightDM install as my greeter  
`pacman -S lightdm lightdm-gtk-greeter`  
`sudo systemctl enable lightdm.service`  

## Networking
Wifi  
`pacman -S dialog wpa_supplicant wpa_actiond`
Bluetooth  
`pacman -S bluez bluez-utils`

For my wifi set up I like to just use `sudo wifi-menu` to connect manually each time.  

## Users
I like to set up a new group and use that for my sudoers  
`groupadd sudoers`  
add `%sudoers ALL=(ALL) ALL)` to visudo  
`useradd -m -g sudoers siopsys`  
-m will make the home directory 

## AUR
For the user repo I like to use yay  
`git clone https://aur.archlinux.org/yay.git`  
`cd yay`  
`makepkg -si`  

## Addons for Ranger
A full list can be found on the package page for ranger  
`pacman -S atool elinks ffmpegthumbnailer poppler w3m transmission-cli mediainfo odt2txt`  

## Fonts  
 - Fira code
 - Fira Mono
 - Libtertine
 - FontAwesome
These are my base and I'll build on them as the need grows   

## VIM
Need vundle for vim plugins  
`yay -S vundle-git`  
Don't use the standard vundle as it is outdated, use the git version  
I largely just use vanilla VIM now, but I do have nerdtree https://vimawesome.com/plugin/nerdtree-red  

My i3 look is heavily based on https://github.com/addy-dclxvi/i3-starterpack , I have just tweaked it to make it to my liking. 
