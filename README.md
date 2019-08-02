# Load balancing with lxc containers 

This configuration of software demonstrates the Round Robin principle of a load balancer, with 2 webservers provided by Nginx and Haproxy as the Load Balancer using Ansible for simplicity of setup (as the alternatives are quite involved).  

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


**4. Copy the displayed IP address of YOUR lb (Load Balancer) into a Browser of your choice.**  

**5. Click the refresh button in your browser to see the 2 web servers alternating the output via the Load Balancer.**  

### Other types of tests  

**To run this test 10 times and display the results within the terminal, type the following and replace the below IP with the IP address of YOUR Load Balancer.**  
for run in {1..10}; do curl -i http://10.195.134.118/; done

**Apache benchmark**

##### Install Apache utils
sudo apt-get install apache2-utils

**Run a test with ApacheBench with 1000 requests with a concurrency of 100. This allows one to see average response times, failed requests, tyransfer rate, and more.**  
ab -n 1000 -c 100 http://10.246.154.247/

