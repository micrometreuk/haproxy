# Load balancing with lxc containers 1

## with  nginx web servers and a Haproxy load balancer 2

#Dependencies 1

1.lxd

2.ansible

#start

make containers
make deploy


#tests
#replace ip with the haproxy (lb) container's ip
#commands
for i in `seq 1 2000`; do curl 10.246.154.30; done
