#!/bin/bash

echo please run this script as root

echo please enter the monitoring interface name:

read min

echo please enter the channel:

read ch

name=pdumpsec

if [[ -e $name.sh  ]]; then
	scount=0
	while [[ -e $name$scount.sh  ]]; do
	let scount++
	done
	name=$name$scount
	echo airodump-ng -a -c $ch --manufacturer $min >> "$name".sh
	chmod +x $name.sh

else

echo airodump-ng -a -c $ch --manufacturer $min >> "$name".sh
chmod +x $name.sh

fi
