#!/bin/bash
# Ask the user for Link
echo Hello, which binary OLS url to download?
read url
echo Okay I Get URL we will download using wget! please ensure you install WGET!
wget $url
# If download done without problem we will proceed to extract this file
tar -zxvf openlitespeed-*.tgz
cd openlitespeed
sudo su
chmod +x install.sh
./install.sh