#!/usr/bin/env bash

sudo apt-get update -y && sudo apt install -y build-essential dkms linux-headers-$(uname -r) && cd /media/$USER/VBox* && sudo ./VBoxLinuxAdditions.run
