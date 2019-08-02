# Load balancing with lxc containers 

Using Ansible, we will demonstrate the Round Robin principle with 2 webservers provided by Nginx and Haproxy as the Load Balancer.  


### Dependencies 
#### lXD & Ansible

A terminal is required to perform the following steps:

**1. Clone the repo**  
git clone https://github.com/micrometreuk/haproxy.git

**2. Change to the directory**  
cd haproxy

**3. Creating the containers and provisioning required software within them.**  
make 

### Installation Validation Test  

**List the containers**  
lxc list  

You should see somthing displayed similar to the below:  
![alt text](https://github.com/micrometreuk/haproxy/blob/master/media/lxc.png)  







**4. Copy the displayed IP address of YOUR lb (Load Balancer) into a Browser of your choice.  

**5. Click the refresh button in your browser to see the 2 web servers alternating the output.

### Other types of tests  

**Type the following and replace the below IP with the IP address of YOUR lb.**  
for i in `seq 1 2000`; do curl http://10.246.154.247/; done

**Apache benchmark**

##### Install Apache utils
sudo apt-get install apache2-utils

**Run a test with ApacheBench with 1000 requests with a concurrency of 100**

ab -n 1000 -c 100 http://10.246.154.247/

