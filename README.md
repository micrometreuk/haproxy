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

replace ip with the haproxy (lb) container's ip

for i in `seq 1 2000`; do curl 10.246.154.30; done
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
| NAME |  STATE  |         IPV4          |                     IPV6                      |    TYPE    | SNAPSHOTS |
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
| lb   | RUNNING | 10.246.154.247 (eth0) | fd42:5baa:fcc5:df69:216:3eff:fe46:1d56 (eth0) | PERSISTENT |           |
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
| web1 | RUNNING | 10.246.154.176 (eth0) | fd42:5baa:fcc5:df69:216:3eff:feca:2767 (eth0) | PERSISTENT |           |
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
| web2 | RUNNING | 10.246.154.56 (eth0)  | fd42:5baa:fcc5:df69:216:3eff:fe8f:ac14 (eth0) | PERSISTENT |           |
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
| web3 | RUNNING | 10.246.154.39 (eth0)  | fd42:5baa:fcc5:df69:216:3eff:fefd:ef42 (eth0) | PERSISTENT |           |
+------+---------+-----------------------+-----------------------------------------------+------------+-----------+
