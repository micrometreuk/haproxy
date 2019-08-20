#!/bin/bash
#stop all contaners
unmake-demo () {
lxc list | grep 'lb1\|web1\|web2'   | awk '{print $2}'| xargs lxc stop
lxc list | grep 'lb1\|web1\|web2'   | awk '{print $2}'| xargs lxc delete
}
unmake-demo
