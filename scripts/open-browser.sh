#!/bin/bash
open_broser () {
echo  "$(tput setaf 1) $(tput setab 7) "pres CTRL + C to continue with the terminal, firefox will remain open " $(tput sgr 0)"
lxc list | grep lb1 | awk '{print "http://"$6":32700"   }' | xargs nohup firefox --new-window & 
lxc list | grep lb1 | awk '{print "http://"$6}' | xargs nohup firefox  & 

}

open_broser
