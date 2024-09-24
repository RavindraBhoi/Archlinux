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
        echo "_____________________"
        echo " GOLI BETA MASTI NAHI"
        echo "_____________________"
        echo "Invalid input. enter from 1 to 11"
    fi
done

if [[ $BOOT == 1 ]];
then
  echo "________________"
  echo "you chose Plasma"
  echo "________________"
  sudo pacman -Sy plasma-meta plasma-workspace xorg sddm
elif [[ $BOOT == 2 ]];
then
  echo "________________"
  echo "you chose GNOME"
  echo "________________"
  sudo pacman -Sy gnome xorg sddm
elif [[ $BOOT == 3 ]];
then
  echo "________________"
  echo "you chose XFCE4"
  echo "________________"
  sudo pacman -Sy xfce4 xorg sddm
elif [[ $BOOT == 4 ]];
then
  echo "________________"
  echo "you chose Cinnamon"
  echo "________________"
  sudo pacman -Sy cinnamon xorg sddm
elif [[ $BOOT == 5 ]];
then
  echo "________________"
  echo "you chose Cosmic"
  echo "________________"
  sudo pacman -Sy cosmic xorg sddm
elif [[ $BOOT == 6 ]];
then
  echo "________________"
  echo "you chose Deepin"
  echo "________________"
  sudo pacman -Sy deepin xorg sddm
elif [[ $BOOT == 7 ]];
then
  echo "________________"
  echo "you chose Budgie"
  echo "________________"
  sudo pacman -Sy budgie xorg sddm
elif [[ $BOOT == 8 ]];
then
  echo "________________"
  echo "you chose Cutefish"
  echo "________________"
  sudo pacman -Sy cutefish xorg sddm
elif [[ $BOOT == 9 ]];
then
  echo "________________"
  echo "you chose Enlightenment"
  echo "________________"
  sudo pacman -Sy enlightenment xorg sddm
elif [[ $BOOT == 10 ]];
then
  echo "________________"
  echo "you chose GNOME-Flashback"
  echo "________________"
  sudo pacman -Sy gnome-flashback xorg sddm
else [[ $BOOT == 11 ]];
  echo "________________"
  echo "you chose Mate"
  echo "________________"
  sudo pacman -Sy mate xorg sddm
fi

sudo systemctl enable sddm
echo "you can reboot now!!"
    
    
