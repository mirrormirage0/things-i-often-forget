Find out the corresponding letter for your USB drive. 
Replace sdX with sdc / sdd etc.. 
Optionally format the USB using gparted and create a FAT32 partition

`sudo dd if=arch.iso of=/dev/sdX bs=4M status=progress`
