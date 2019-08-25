#!/bin/bash
#lxc list | grep lb1 | awk '{print "http://"$6":32700"}' | xargs xdg-open
echo  "pres CTRL + C to continue with  the terminal the firefox will remain open"
lxc list | grep lb1 | awk '{print "http://"$6":32700"   }' | xargs nohup firefox --new-window & 
lxc list | grep lb1 | awk '{print "http://"$6}' | xargs nohup firefox  & 
