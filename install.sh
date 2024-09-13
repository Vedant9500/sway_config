#!/bin/bash

# Update system and installing packages
sudo pacman -Syu waybar grim wl-clipboard slurp

# Move wallpaper to the Pictures folder
mkdir -p ~/Pictures/wallpapers
mv peakpx.jpg ~/Pictures/wallpapers/

# Move waybar configuration to ~/.config/
mkdir -p ~/.config/waybar
mv waybar ~/.config/

# Move Sway configuration to /etc/sway/
sudo mv config /etc/sway/

# Move scripts to home directory
mv scripts ~/

# Change to scripts directory
cd ~/scripts

# Make screenshot scripts executable
chmod +x ~/scripts/screenshot_clipboard.sh
chmod +x ~/scripts/screenshot_region_clipboard.sh
cd ~

# Clone SDDM astronaut theme from GitHub
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme

# Copy Fonts for SDDM theme to the system fonts directory
sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/

# Update font cache (important for new fonts to take effect)
sudo fc-cache -f -v

echo "Setup complete. Please reboot your system for changes to take effect."
