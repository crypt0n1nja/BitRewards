#!bin/bash
sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y install libwww-perl build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils libdb++-dev libminiupnpc-dev libboost-all-dev libqrencode-dev unzip && sudo fallocate -l 4G /swapfile && sudo chmod 600 /swapfile && sudo mkswap /swapfile && sudo swapon /swapfile && sudo echo "vm.swappiness=10" >> /etc/sysctl.conf && sudo echo "/swapfile none swap sw 0 0" >> /etc/fstab
mkdir -p ~/XBR && cd ~/XBR && git clone git clone https://github.com/crypt0n1nja/BitRewards && cd ~/XBR/BitRewards/src && sudo make -f makefile.unix && sudo strip bitrewardsd && cp bitrewardsd ../../../bitrewardsd && ./bitrewardsd
sudo cp ~/XBR/BitRewards/bitrewards.conf ~/.xbitrewards/bitrewards.conf
echo "Put in your masternode private key and VPS IP address"
sudo nano ~/.xbitrewards/bitrewards.conf
echo "start node"
sudo ./bitrewardsd
echo "XBR Daemon Successfully Deployed"
