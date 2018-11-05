#!/bin/bash

echo please run the script as root

ifconfig

echo please enter the interface name:

read in

name=airmon

if [[ -e $name.sh  ]]; then
	scount=0
	while [[ -e $name$scount.sh  ]]; do
	let scount++
	done
	name=$name$scount
	echo airmon-ng start $in >> "$name".sh
	chmod +x $name.sh

else
	echo airmon-ng start $in >> "$name".sh
	chmod +x $name.sh
fi

#airmon-ng check kill
