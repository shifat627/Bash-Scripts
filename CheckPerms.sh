#!/bin/bash

[ $# -lt 1 ] && { echo -e "\e[1;31mOne Or more Arguments Required"; exit 1; }

echo -e "\e[1;36mTotal File(s)/Directory(s) $#"

for file in $@
do
 echo -e "\e[1;35m[!]Checking Existence of '$file'"
 if [ -e $file ]; then
  #echo -e "\e[1;34m[+]'$file' is Found"
   [ -f $file ] && { echo -e "\e[1;34m[+]'$file' is file"; [ -x $file ] && { echo -e "\e[1;32m\t[+]'$file' is executable"; } || { echo -e "\e[1;31m\t[+]'$file' is Not Executable"; }; [ -r $file ] && { echo -e "\e[1;32m\t[+]'$file' is Readable"; } || { echo -e "\e[1;31m\t[+]'$file' is not Readble"; }; [ -w $file ] && { echo -e "\e[1;32m\t[+]'$file' is Writable"; } || { echo -e "\e[1;31m\t[+]'$file' is not Writable"; };  }
   [ -d $file ] && echo -e "\e[1;32m[+]'$file' is Directory"
   [ -L $file ] && echo -e "\e[1;32m[+]'$file' is Symlink"
   
 else
  echo -e "\e[1;31m[-]'$file' is not Found"
 fi

 echo -e "\n"
done
