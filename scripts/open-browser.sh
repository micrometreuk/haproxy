#!/bin/bash
# extract ip from the load balancer and open with default brwoser
lxc list | grep lb1 | awk '{print "http://"$6}' | xargs xdg-open
# if the above fails try  with firefox
#lxc list | grep lb1 | awk '{print "http://"$6}' | xargs firefox --new-window &
