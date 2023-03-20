#!/bin/bash
#this program will execute update & upgrade repositories using the apt command
#Addtionaly, it will keep a dated installation log for later review (if needed)
#So that the screen is clean during system upgrading
#Recommende Usage#
#It is recommended to create an Alias for this command and store it in your
#.bashrc configurations, so that this runs automatically when typing upd, for example.
notify-send "updating repositories and upgrading programs"
sleep 2
notify-send "you may need to enter your credentials"
sleep 2
echo "----------------------------" >> ~/myrepo/package_install_results.log
date >> ~/myrepo/package_install_results.log
echo "----------------------------" >> ~/myrepo/package_install_results.log
sudo apt update -y  >> ~/myrepo/package_install_results.log
sudo apt upgrade -y >> ~/myrepo/package_install_results.log
echo "----------------------------" >> ~/myrepo/package_install_results.log
notify-send "Your system is up-to-date"
sleep 2
notify-send "Review installation logs ~/myrepo/package_install_results.log"
