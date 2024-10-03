# Archlinux installation made easy with my custom script!!
---
#### Install archlinux under few minutes. It works on both Clean install and Dualboot with windows.
___
#### The Script is for Intel and AMD x86_64 architecture.
___
### 1. Download the ISO of Archlinux.
Download the Archlinux ISO from [Download Archlinux](https://archlinux.org/download/) .
Scroll down on the download page and download from your nearest mirror.

### 2.Make a Bootable USB
Requirement : 8 GB or higher pendrive


Use any flashing Tool. I am using Balena Etcher. you can use Rufus also.

+ Connect a Pendrive. 
+ Select Flash from file and select your downloaded Archlinux ISO. 
+ select target and select your Pendrive. 
+ click on flash.

Once finished, safely eject your Pendrive.
___
You can skip step 3 if you are installing fresh. Follow step 3 for dualboot
___
### 3.Creating a space for Archlinux.
Open disk management on windows and shrink a volume from your drive (20 GB minimum recommanded). I am shrinking 64 GB. Keep it unallocated.

If you do not know how to shrink free space from drive refer to this link. 

[Shrink your Drive](https://support.microsoft.com/en-us/topic/microsoft-support-how-to-re-partition-without-destroying-the-data-c3d64de0-4672-b21f-de4e-b4908fb35ae3)

___
Now, shutdown your PC.
___
### 4. Installation
+ Connect the pendrive to your PC and turn it on. go to the boot menu by pressing F9 key(for HP computers). for your computer boot menu key might be diffrerent. google it.
+ Select your pendrive from boot menu. then select install archlinux option.

Once you are on Arch Installation terminal type the following command to make fontsize big.
```
setfont ter-132n
```
#### To connect to the internet use iwctl utility.
type the following commands.
```
iwctl device list
```
```
iwctl station YOUR_DEVICE get-networks
```
This will list the available networks. to connect to the network type following.
```
iwctl station wlan0 connect NETWORK_NAME
```
It will ask for password. type your password then click enter.
To verify the connection type the command.
```
ping google.com
```
If you are receiving bytes it's connected.
Interrupt the ping using Ctrl+C key.
 
#### Now Create partition
type the command.
```
lsblk
```
It will give list of your drives. 

I am installing on nvme drive. If you are installing on hard disk your drive will be sda, sdb or sdc. verify with the drive size.


Now type following command to enter cfdisk utility and create the partition.
```
cfdisk /dev/YOUR_DISK
 
--in my case it is nvme0n1. So, I will cfdisk into that--

cfdisk /dev/nvme0n1
```
Once you are in cfdisk utility. 
+ select the free space and type 300M, click enter.
+ select the newly created 300M partition and change the type to **EFI partition**.

--photo--
+ select the rest free space and click enter. Keep type as **Linux Filesystem**.
+ go to WRITE and click enter
+ type "yes" and click enter.

Verify newly created partition by typing **lsblk**
```
lsblk
```
--photo--


Now, type the following command to sync the database and refresh the mirrors.
```
sudo pacman -Syy
```
#### Download the installation script using curl
```
curl https://raw.githubusercontent.com/RavindraBhoi/Archlinux/main/archinstall.sh -o archinstall.sh
```
Verify with **ls**

--photo--
 
If script is not downloaded run the curl again as it is case sensitive.
#### Run the installation script.
To run the installation script run the following.
```
sh archinstall.sh
```
+ type the EFI partition

--photo--

+ type the Root partition

--photo--

+ write your username. It will be used for login.

--photo--

+ write your full name

--photo-- 

+ type password 

--photo-- 

+ type your processor name. Intel or AMD


for Intel
```
intel
```
for AMD
```
amd
```
___
#### Relax, your installation has started. Installation time depends on internet speed and drive speed.
___

After installation is finished shutdown your PC using following
```
shutdown now
```
___
___
#### You have Installed the base archlinux on your computer
___
___
#### Now turn on your computer to install Desktop environment
This time boot to archlinux from boot-menu.

Login with your credentials. and type the following to set font-size big
```
setfont -d
```
#### Connect to the internet
Use nmcli utility to connect to the internet. Type the following command and replace NETWORK_NAME with your network name and PASSWORD with your network password
```
nmcli dev wifi connect NETWORK_NAME password "PASSWORD"
```
I am assuming your PC has wifi. If not use this guide to know more about [nmcli](https://www.geeksforgeeks.org/nmcli-command-in-linux-with-examples/).

Once you are connected to internet verify using **ping** command.

#### Download script to install your favorite Desktop Environment
To download type following
```
curl https://raw.githubusercontent.com/RavindraBhoi/Archlinux/main/postinstall.sh -o postinstall.sh
```
Verify the downloaded file with **ls** command.

Make the file **Executable** by typing following
```
chmod +x postinstall.sh
```
Now, Run the script.
```
sh postinstall.sh
```
This will give the following options
1. KDE plasma
2. GNOME
3. XFCE4
4. Cinnamon
5. Cosmic
6. Deepin
7. Budgie
8. Cutefish
9. Enlightenment
10. Gnome-Flashback
11. Mate

Select any.

It will ask for your password. Press enter for all defaults. It will ask for password again to enter Windows boot entry to bootloader.
#### Now, Reboot your PC
```
reboot
```
___
** **OPTIONAL** ** Neon Theme for Alacritty terminal
___
#### Open the terminal and Download the theme script by typing following.
```
curl https://raw.githubusercontent.com/RavindraBhoi/Archlinux/main/alacritty.sh -o alacritty.sh
```
verify the download by **ls** command.
#### Make the script Executable
Type the following command
```
chmod +x alacritty.sh
```
#### Run the script
```
sh alacritty.sh
```
close the Alacritty Terminal and reopen it. You have theme on your terminal now.
