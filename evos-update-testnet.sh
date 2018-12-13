#!/bin/bash

evos-cli stop
sleep 2
rm .evos/testnet4/mncache.dat .evos/testnet4/mnpayments.dat .evos/testnet4/peers.dat
rm -rf /usr/local/bin/evos*
rm -rf evos-cli_ubuntu-16.04-x64.tar.bz2
wget https://github.com/EVOS-DEV/evos-core/releases/download/1.1.2/evos-1.1.2-ubuntu-daemon.tgz
tar -xvf evos-1.1.2-ubuntu-daemon.tgz
sudo chmod -R 755 evos-cli
sudo chmod -R 755 evosd
cp -p -r evosd /usr/local/bin
cp -p -r evos-cli /usr/local/bin
rm -rf evos-1.1.1-ubuntu-daemon.tgz
rm -rf evos-1.1.2-ubuntu-daemon.tgz
evosd -daemon -testnet -reindex
evos-cli --version
