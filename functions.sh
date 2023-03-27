#!/bin/bash

release_file=/etc/os-release

check_exit_status() {
	if  [ $? -ne 0  ]
	then
		notify-send "An error ocurred, check error.log"
	else
		notify-send "No errors during update"
	fi
}


if grep -q "DEBIAN" $release_file || grep -q "UBUNTU" $release_file
then	
	clear
	notify-send "Updating Repositories"
	sleep 2
	sudo apt update
	sudo apt upgrade -y 1> ~/update.log 2>~/error.log
	check_exit_status
	notify-send "Update process completed"
fi
