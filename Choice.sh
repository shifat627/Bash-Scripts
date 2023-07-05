#!/bin/bash

EXIT=0

while [ $EXIT -ne 1 ]
do
 echo -e -n "1.Show UserName\n2.Show PATH\n3.Show HOME\n4.exit\nYour Choice: "
 read Inp
 
 clear
 
 case "$Inp" in 
  "1" )
  	echo -e "\e[1;32m\t[+]Your Username: $USERNAME\e[1;m"
  	;;
  "2" ) 
  	echo -e "\e[1;32m\t[+]$PATH\e[1;m"
  	;;
  "3" ) 
  	echo -e "\e[1;32m\t[+]Your Home: $HOME\e[1;m"
  	;;
  "4" )
  	clear
  	exit 0
  	;;
  * ) 
  	echo -e "\e[1;31m\t[-]Invalid Option\e[1;m"
  	;;
 esac
 
 echo -e "\e[1;35mPress Enter To Continue\e[1;m"
 read
 clear

done
