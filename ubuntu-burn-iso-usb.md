
#Install gddrescue
`apt install gddrescue`

#Locate the USB drive
`$ sudo fdisk -l
Disk /dev/sdX: 7.22 GiB, 7747397632 bytes, 15131636 sectors
Disk model: DataTraveler 2.0
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x00000000`

#Download the ISO and burn to USB
`sudo ddrescue focal-desktop-amd64.iso /dev/sdX --force -D`
