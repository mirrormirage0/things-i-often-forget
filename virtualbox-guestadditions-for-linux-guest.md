From the virtual machine menu, click Devices -> “Insert Guest Additions CD Image” 

Then execute the following command in a terminal
`sudo apt-get update -y && sudo apt install -y build-essential dkms linux-headers-$(uname -r) && cd /media/$USER/VBox* && sudo ./VBoxLinuxAdditions.run`
