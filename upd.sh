#!/bin/bash

release_file=/etc/os-release

if grep -q "ARCH" $release_file

#if [ -d /etc/pacman.d ]
then
	sudo pacman -Syu
fi


if grep -q "DEBIAN" $release_file || grep -q "UBUNTU" $release_file
then	
	clear
	notify-send "Updating Repositories"
	sleep 2
	sudo apt update
	sudo apt upgrade -y 1> ~/update.log 2>~/error.log
	notify-send "Updates Completed"
fi
