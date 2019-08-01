# Load balancing with lxc containers 

### Ansible, Nginx and  Haproxy.  
  
### 

### Dependencies 


#### 1.lxd

#### 2.ansible

**First clone the repo**

git clone https://github.com/micrometreuk/haproxy.git

**change to the directory**

cd haproxy

**Start provisioning the containers**

make 

### Installation validation test.


**List the containers**

lxc list

![alt text](https://github.com/micrometreuk/haproxy/blob/master/media/lxc.png)









**Replace ip with the haproxy (lb) container's ip this**

for i in `seq 1 2000`; do curl http://10.246.154.247/; done

**apache benchmark**

##### Install apache utils
sudo apt-get install apache2-utils

**Run a test with ApacheBench with 1000 requests with a concurrency of 100**

ab -n 1000 -c 100 http://10.246.154.247/

