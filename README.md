# Load balancing with lxc containers 

This configuration of software demonstrates the Round Robin principle of a load balancer, with 2 webservers provided by Nginx and Haproxy as the Load Balancer using Ansible for simplicity of setup (as the alternatives are quite involved).  

**Dependencies**
LXD & Ansible

A terminal is required to perform the following steps:

**1. Clone the repo**  
git clone https://github.com/micrometreuk/haproxy.git

**2. Change to the directory**  
cd haproxy

**3. Creating the containers and provisioning required software within them.**  
make containers 

### Installation Validation Test  


You should see somthing displayed similar to the below:  
![alt text](https://github.com/micrometreuk/haproxy/blob/master/media/demo-0.gif)  


1. Ansible creates the required LXC containers and installs desired software.
2. Your default browser opens the HAProxy server and refreshes every 3 seconds to display the alternating output of the 2 web servers.
3. HAProxy can also provides a statistics report. This is opened and displayed in another browser window.   


### Other Performance Tests  
**Terminal Output**  
**To run this test 10 times and display the alternating server results within the terminal, type the following and replace the below IP with the IP address of YOUR Load Balancer.**  
for run in {1..10}; do curl -I http://(LoadBalancersIP)/; done  
Client fot URL's (cURL) will display the header info only per request within the terminal window.  
  
**Apache benchmark**  
**For more information on average response times, failed requests, transfer rate, and more, install Apache utils with:**
sudo apt-get install apache2-utils

**To run a test with ApacheBenchmark with 10000 requests with a concurrency of 1000.**  
ab -n 10000 -c 1000 http://(LoadBalancersIP)/

### Destroy the demo enviroment
Once you are finished with this demonstration, run the below command to remove the created containers.  
make unmake
