#!/usr/bin/env bash

echo "Please Enter EFI partition:"
read EFI

echo "Please enter root(/) partition:"
read ROOT

echo "Please enter root password:"
read ROOTPASSWD

echo "Please Username:"
read USER

echo "Please enter User password"
read PASSWD

echo -e "\nCreating Filesystem...\n"

mkfs.fat -F32 "EFISYSTEM" "$(EFI)"
mkfs.ext4 "ROOT" "$(ROOT)"

mount "$(ROOT)" /mnt
mkdir /mnt/boot
mount "$(EFI)"

echo "__________________________________________________"
echo "INSTALLING ARCH BASE ON MAIN DRIVE"
echo "___________________________________________________"

pacstrap -i /mnt base base-devel linux linux-headers linux-firmware intel-ucode sudo git nano vim neofetch htop bluez bluez-utils networkmanager cargo --noconfirm --needed

genfstab -U /mnt >> /mnt/etc/fstab

cat <<READLEND> /mnt/next.sh
passwd
"$(ROOTPASSWD)"
useradd -m -g users -G wheel,storage,video,audio -s /bin/bash "$(USER)"
passwd "$(USER)"
"$(PASSWD)"
sed -i 's/^# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
hwclock --systohc
echo "Generating Locales......"
sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" >> /etc/locale.conf
echo "archlinux" >> /etc/hostname

cat <<EOF> /etc/hosts
127.0.0.1  localhost
::1        localhost
127.0.1.1  archlinux.localdomain  archlinux
EOF

pacman -S grub efibootmgr dosfstools mtools --noconfirm --needed
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
systemctl enable bluetooth
systemctl enable NetworkManager
exit
READLEND

arch-chroot /mnt sh next.sh
umount -lR /mnt
echo "NOW SHUTDOWN YOUR SYSTEM USING COMMAND shutdown now"
