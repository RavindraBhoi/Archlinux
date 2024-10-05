sudo pacman -Syy
sudo pacman -S hyprland waybar dunst hyprpaper hypridle xdg-desktop-portal-hyprland xdg-user-dirs-gtk rofi-wayland noto-fonts ttf-fira-sans ttf-font-awesome lxappearance libadwaita brightnessctl kitty sddm hyprlock --noconfirm --needed
sudo pacman -S chromium vlc mousepad thunar file-roller thunar-archive-plugin tumbler ffmpegthumbnailer gvfs-mtp galculator ristretto blueman nm-connection-editor blueman-manager --noconfirm --needed
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm --needed
cd 
yay -S wlogout --noconfirm --needed
sudo systemctl enable sddm
git clone https://github.com/RavindraBhoi/Archlinux
cd Archlinux/config
sudo cp hypr -r /home/$USER/
sudo pacman -S os-prober --noconfirm --needed
sudo sed -i 's/^#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo "you can reboot now!!"
    
