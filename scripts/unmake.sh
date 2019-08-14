#!/bin/bash
#stop all contaners
#lxc list | awk '{print $2}' | xargs | cut -c 5- | xargs lxc stop
#delete all contaners
#lxc list | awk '{print $2}' | xargs | cut -c 5- | xargs lxc delete
lxc list | grep lb | awk '{print $2}'| xargs lxc stop
lxc list | grep web1 | awk '{print $2}'| xargs lxc stop
lxc list | grep web2 | awk '{print $2}'| xargs lxc stop
lxc list | grep lb | awk '{print $2}'| xargs lxc delete
lxc list | grep web1 | awk '{print $2}'| xargs lxc delete
lxc list | grep web2 | awk '{print $2}'| xargs lxc delete
