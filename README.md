---
# Archlinux installation made easy with my custom script!!
---
#### Install archlinux under few minutes. It works on both Clean install and Dualboot with windows.
___
#### The Script is for Intel and AMD x86_64 architecture.
___
### 1. Download the ISO of Archlinux.
Download the Archlinux ISO from: https://archlinux.org/download/ .
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

https://support.microsoft.com/en-us/topic/microsoft-support-how-to-re-partition-without-destroying-the-data-c3d64de0-4672-b21f-de4e-b4908fb35ae3

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
To connect to the internet using iwctl utility.
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
 


