`sudo apt update`

`sudo apt install build-essential dkms linux-headers-$(uname -r)`

From the virtual machine menu, click Devices -> “Insert Guest Additions CD Image” 
Navigate to the mounted cdrom drive in terminal.
For me, this was 

`cd /media/$USER/VBox*`

`sudo ./VBoxLinuxAdditions.run`

Want a crazy one-liner?
Click Devices > "Insert Guest Additions CD Image"
`sudo apt-get update && sudo apt install build-essential dkms linux-headers-$(uname -r) && cd /media/$USER/VBox* && sudo ./VBoxLinuxAdditions.run`
