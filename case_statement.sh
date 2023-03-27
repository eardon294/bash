#!/bin/bash

echo "What is your favorite Linux Distro?"
echo "1 - Arch"
echo "2 - Debian"

read distro;

case $distro in
	1) echo "Arch is a rolling release.";;
	2) echo "Debian is a community distribution.";;
	*) echo "You didn't enter an appropriate choice."
esac
