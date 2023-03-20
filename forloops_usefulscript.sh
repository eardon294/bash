#!/bin/bash
#Creates a tar file for every single script in my repo
#and moves the file into a Tar folder
for file in ~/myrepo/*.sh
do
	tar -czvf $file.tar.gz $file
	mv *.gz ~/myrepo/Tar_backups
done
