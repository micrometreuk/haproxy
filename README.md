# Load balancing with lxc containers 

### Nginx and  Haproxy 

### Dependencies 


#### 1.lxd

#### 2.ansible

**first clone the repo**

git clone https://github.com/micrometreuk/haproxy.git

**change to the directory**

cd haproxy

**create the containers**

make containers

**start provisioning the containers**

make deploy


tests

**List the containers**
lxc list

![alt text](https://github.com/micrometreuk/haproxy/blob/master/media/lxc.png)






replace ip with the haproxy (lb) container's ip

for i in `seq 1 2000`; do curl 10.246.154.30; done
