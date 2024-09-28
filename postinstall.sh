while true; do
    echo "Choose a Desktop environment"
    echo "1. KDE plasma"
    echo "2. GNOME"
    echo "3. XFCE4"
    echo "4. Cinnamon"
    echo "5. Cosmic"
    echo "6. Deepin"
    echo "7. Budgie"
    echo "8. Cutefish"
    echo "9. Enlightenment"
    echo "10. Gnome-Flashback"
    echo "11. Mate"
    read BOOT

    if [[ $BOOT == 1 || $BOOT == 2 || $BOOT == 3 || $BOOT == 4 || $BOOT == 5 || $BOOT == 6 || $BOOT == 7 || $BOOT == 8 || $BOOT == 9 || $BOOT == 10 || $BOOT == 11 ]]; then
        break
    else
        echo "---------------------"
        echo " GOLI BETA MASTI NAHI"
        echo "---------------------"
        echo "Invalid input. enter from 1 to 11"
    fi
done

if [[ $BOOT == 1 ]];
then
  echo "----------------"
  echo "you chose Plasma"
  echo "----------------"
  sudo pacman -Sy plasma-meta xorg ly konsole
elif [[ $BOOT == 2 ]];
then
  echo "----------------"
  echo "you chose GNOME"
  echo "----------------"
  sudo pacman -Sy gnome xorg ly alacritty
elif [[ $BOOT == 3 ]];
then
  echo "----------------"
  echo "you chose XFCE4"
  echo "----------------"
  sudo pacman -Sy xfce4 xorg ly alacritty 
elif [[ $BOOT == 4 ]];
then
  echo "----------------"
  echo "you chose Cinnamon"
  echo "----------------"
  sudo pacman -Sy cinnamon xorg ly alacritty 
elif [[ $BOOT == 5 ]];
then
  echo "----------------"
  echo "you chose Cosmic"
  echo "----------------"
  sudo pacman -Sy cosmic xorg ly alacritty 
elif [[ $BOOT == 6 ]];
then
  echo "----------------"
  echo "you chose Deepin"
  echo "----------------"
  sudo pacman -Sy deepin xorg ly alacritty 
elif [[ $BOOT == 7 ]];
then
  echo "----------------"
  echo "you chose Budgie"
  echo "----------------"
  sudo pacman -Sy budgie xorg ly alacritty
elif [[ $BOOT == 8 ]];
then
  echo "----------------"
  echo "you chose Cutefish"
  echo "----------------"
  sudo pacman -Sy cutefish xorg ly alacritty
elif [[ $BOOT == 9 ]];
then
  echo "----------------"
  echo "you chose Enlightenment"
  echo "----------------"
  sudo pacman -Sy enlightenment xorg ly alacritty
elif [[ $BOOT == 10 ]];
then
  echo "----------------"
  echo "you chose GNOME-Flashback"
  echo "----------------"
  sudo pacman -Sy gnome-flashback xorg ly alacritty 
else [[ $BOOT == 11 ]];
  echo "----------------"
  echo "you chose Mate"
  echo "----------------"
  sudo pacman -Sy mate xorg ly alacritty 
fi

sudo systemctl enable ly
sudo pacman -S os-prober --noconfirm --needed
sudo sed -i 's/^#GRUB_DISABLE_OS_PROBER=false/GRUB_DISABLE_OS_PROBER=false/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
echo "you can reboot now!!"
    
    
