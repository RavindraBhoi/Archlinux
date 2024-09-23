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
        echo "Invalid input. enter from 1 to 11"
    fi
done

if [[ $BOOT == 1 ]];
then
  echo "________________"
  echo "you chose Plasma"
  echo "________________"
  sudo pacman -Sy plasma-meta plasma-workspace xorg gdm
elif [[ $BOOT == 2 ]];
then
  echo "________________"
  echo "you chose GNOME"
  echo "________________"
  sudo pacman -Sy gnome xorg gdm
elif [[ $BOOT == 3 ]];
then
  echo "________________"
  echo "you chose XFCE4"
  echo "________________"
  sudo pacman -Sy xfce4 xorg gdm
elif [[ $BOOT == 4 ]];
then
  echo "________________"
  echo "you chose Cinnamon"
  echo "________________"
  sudo pacman -Sy cinnamon xorg gdm
elif [[ $BOOT == 5 ]];
then
  echo "________________"
  echo "you chose Cosmic"
  echo "________________"
  sudo pacman -Sy cosmic xorg gdm
elif [[ $BOOT == 6 ]];
then
  echo "________________"
  echo "you chose Deepin"
  echo "________________"
  sudo pacman -Sy deepin xorg gdm
elif [[ $BOOT == 7 ]];
then
  echo "________________"
  echo "you chose Budgie"
  echo "________________"
  sudo pacman -Sy budgie xorg gdm
elif [[ $BOOT == 8 ]];
then
  echo "________________"
  echo "you chose Cutefish"
  echo "________________"
  sudo pacman -Sy cutefish xorg gdm
elif [[ $BOOT == 9 ]];
then
  echo "________________"
  echo "you chose Enlightenment"
  echo "________________"
  sudo pacman -Sy enlightenment xorg gdm
elif [[ $BOOT == 10 ]];
then
  echo "________________"
  echo "you chose GNOME-Flashback"
  echo "________________"
  sudo pacman -Sy gnome-flashback xorg gdm
else [[ $BOOT == 11 ]];
  echo "________________"
  echo "you chose Mate"
  echo "________________"
  sudo pacman -Sy mate xorg gdm
fi

sudo systemctl enable gdm
echo "you can reboot now!!"
    
    
