#!/bin/bash
if [[ $(id -u) != 0 ]]; then
    echo -e "\n[!] Requires root privileges"
    exit 0
fi
echo "updating!"
apt update && sudo apt full-upgrade -y
echo "Downloading Go language!"
wget https://go.dev/dl/go1.17.6.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.17.6.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
echo "export GOPATH=~/.go" >> ~/.profile
source ~/.profile
go version
echo "Go language Installed!"
