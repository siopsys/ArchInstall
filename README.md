# ArchInstall
## Pacman Mirror List
Update mirror list based on the top 10 servers (ranked by speed) for the UK, using reflector  
`pacman -S reflector`  
`sudo reflector --verbose --county 'united kingdom' -l 10 --sort rate --save /etc/pacman.d/mirrorlist`
