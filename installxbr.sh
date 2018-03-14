#!bin/bash
apt-get update && apt-get -y upgrade && apt-get -y install libwww-perl build-essential libtool automake autotools-dev autoconf pkg-config libssl-dev libgmp3-dev libevent-dev bsdmainutils libdb++-dev libminiupnpc-dev libboost-all-dev libqrencode-dev unzip && fallocate -l 4G /swapfile && chmod 600 /swapfile && mkswap /swapfile && swapon /swapfile && echo "vm.swappiness=10" >> /etc/sysctl.conf && echo "/swapfile none swap sw 0 0" >> /etc/fstab
mkdir -p ~/XBR && cd ~/XBR && git clone git clone https://github.com/crypt0n1nja/BitRewards && cd ~/XBR/BitRewards/src && make -f makefile.unix && strip bitrewardsd && cp bitrewardsd ../../../bitrewardsd && ./bitrewardsd
sudo cp ~/XBR/BitRewards/bitrewards.conf ~/.xbitrewards/bitrewards.conf
echo "Put in your masternode private key and VPS IP address"
sudo nano ~/.xbitrewards/bitrewards.conf
echo "start node"
./bitrewardsd
echo "XBR Daemon Successfully Deployed"
