#!/bin/bash
#stop all contaners
lxc list | awk '{print $2}' | xargs | cut -c 5- | xargs lxc stop
#delete all contaners
lxc list | awk '{print $2}' | xargs | cut -c 5- | xargs lxc delete
