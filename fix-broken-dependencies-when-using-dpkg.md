This command will get and install broken dependencies, if you are trying to install a .deb file using sudo dpkg -i
Classic example, google-chrome-stable.deb on lubuntu will break cause of fonts-liberation dependency. use this

`sudo apt-get install -f`

Once its done, re-run your .deb

`sudo dpkg -i google-chrome-stable.deb`
