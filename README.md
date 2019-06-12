# Load balancing with lxc containers 

## with  and a Haproxy 

## Dependencies 2

1.lxd

2.ansible

start

make containers

make deploy


tests

replace ip with the haproxy (lb) container's ip

for i in `seq 1 2000`; do curl 10.246.154.30; done
