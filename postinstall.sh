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

if [[ $BOOT ==1 ]]; then
  echo "you chose Plasma"
  sudo pacman -Sy plasma-meta plasma-workspace xorg
elif [[ $BOOT == 2 ]]
  echo "you chose GNOME"
  sudo pacman -Sy gnome xorg
elif [[ $BOOT == 3 ]]
  echo "you chose XFCE4"
  sudo pacman -Sy xfce4 xorg
elif [[ $BOOT == 4 ]]
  echo "you chose Cinnamon"
  sudo pacman -Sy cinnamon xorg
elif [[ $BOOT == 5 ]]
  echo "you chose Cosmic"
  sudo pacman -Sy cosmic xorg
elif [[ $BOOT == 6 ]]
  echo "you chose Deepin"
  sudo pacman -Sy Deepin xorg
elif [[ $BOOT == 7 ]]
  echo "you chose Budgie"
  sudo pacman -Sy budgie xorg
elif [[ $BOOT == 8 ]]
  echo "you chose Cutefish"
  sudo pacman -Sy cutefish xorg
elif [[ $BOOT == 9 ]]
  echo "you chose Enlightenment"
  sudo pacman -Sy enlightenment xorg
elif [[ $BOOT == 10 ]]
  echo "you chose GNOME-Flashback"
  sudo pacman -Sy gnome-flashback xorg
elif [[ $BOOT == 11 ]]
  echo "you chose Mate"
  sudo pacman -Sy mate xorg
fi
    
    
