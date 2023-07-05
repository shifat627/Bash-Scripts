#!/bin/bash

EXIT=0

if [ $UID -ne 0 ]; then
 echo "[!]Superuser privilige needed"
 exit 1
fi

while [ $EXIT -ne 1 ]
do
 echo -e "1.Activate ip Forwarding\n2.Deactivate Ip Forwarding\n3.Check Status\n4.Exit"
 read choice
 clear
 case "$choice" in 
 "1") 
	 
	 echo "1" > /proc/sys/net/ipv4/ip_forward
	 echo "[+]Ip Forwarding is Activated " 
	 
 
 ;;
 "2") 
 
 	
 	echo "0" > /proc/sys/net/ipv4/ip_forward
 	echo "[+]Ip Forwarding is Deactivated" 
 	
 ;;
 
 "3") 
 	[ `cat /proc/sys/net/ipv4/ip_forward` -ne 0 ] && { echo "[!]Ip forwarding Is enabled"; } || { echo "[!]Ip Forwarding is Disabled"; }
 ;;
 
 "4") 
 	EXIT=1 
 ;;
 
  *) 
  	echo "[-]Unknown Option" 
  ;;
  esac
  
  if [ $choice -ne 4 ]; then
  
	  
	  echo "[+]Press Any Key To Continue"
	  read
	  clear
  fi
done
