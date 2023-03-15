#!/bin/bash
# example of while loop
# checks for a testfile
# if file present, the script will continue testing
# until file is no longer present in the ~/ directory
# it tests every 10 seconds, so as not to be too heavy on the CPU
myvar=1

while [ -f ~/testfile ]
do
	sleep 10
	echo "as of $(date), the test file exists."
done

echo "as of $(date), the test file has gone missing."
