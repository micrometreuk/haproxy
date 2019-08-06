#!/bin/bash
lxc list | grep lb1 | awk '{print "http://"$6}' | xargs xdg-open
