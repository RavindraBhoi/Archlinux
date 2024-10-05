
sudo systemctl enable ly
sudo pacman -S os-prober --noconfirm --needed
sudo sed -i 's/^#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo "you can reboot now!!"
    
    
