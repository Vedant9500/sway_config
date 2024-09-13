pacman -S waybar
mv peakpx.jpg ~/Pictures/wallpapers
mv waybar ~/.config/
mv config /etc/sway/
mv scripts ~/
cd ~/scripts
sudo pacman -S grim wl-clipboard
sudo pacman -S slurp
exec chmod +x ~/scripts/screenshot_clipboard.sh
exec chmod +x ~/scripts/screenshot_region_clipboard.sh
cd 
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/