#!/bin/bash
# Ask the user for Link
echo Hello, which binary OLS url to download?
read url
echo Okay I Get URL we will download using wget! please ensure you install WGET!
wget $url
# If download done without problem we will proceed to extract this file
tar -zxvf openlitespeed-*.tgz
#change directory to openlitespeed
cd openlitespeed
#change to root account
echo Please becareful we need to proceed as ROOT, please input your password
sudo su
echo now I am ROOT HAHAHA chmod +x install.sh so we can execute the script 
chmod +x install.sh
echo we will start to install please note the user and pass for admin, we can change it later!
./install.sh
echo now we back to your user account, please input your username
read $username
sudo su $username
echo welcome back $username you can open OLS web admin now!