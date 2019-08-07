#!/bin/bash
# extract ip from the load balancer and open with default brwoser
#lxc list | grep lb1 | awk '{print "http://"$6}' | xargs xdg-open
# if the above fails try  with firefox
#haproxy stats url
#lxc list | grep lb1 | awk '{print "http://"$6":32700"}' | xargs xdg-open
lxc list | grep lb1 | awk '{print "http://"$6":32700"   }' | xargs firefox --new-window & 
lxc list | grep lb1 | awk '{print "http://"$6}' | xargs firefox  --new-window & 
