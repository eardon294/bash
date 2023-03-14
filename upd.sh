#!/bin/bash
#this program will execute update & upgrade repositories using the apt command
#Addtionaly, it will keep a dated installation log for later review (if needed)
#So that the screen is clean during system upgrading
#Recommende Usage#
#It is recommended to create an Alias for this command and store it in your
#.bashrc configurations, so that this runs automatically when typing upd, for example.
echo "updating repositories and upgrading programs"
sleep 3
echo "you may need to enter your credentials"
sleep 3
echo "----------------------------" >> ~/package_install_results.log
date >> ~/package_install_results.log
echo "----------------------------" >> ~/package_install_results.log
sudo apt update -y  >> ~/package_install_results.log
sudo apt upgrade -y >> ~/package_install_results.log

echo "----------------------------" >> ~/package_install_results.log

echo "-------> Your system is up-to-date"
