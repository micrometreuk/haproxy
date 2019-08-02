# this script will setup this Load Balancer example.

# Create desired containers and install desired software in each
make 

# Display and validate containers creation
lxc list

# replace ip with the haproxy (lb) container's ip this
# for i in seq 1 2000; do curl http://10.246.154.247/; done

# install apache utils
sudo apt-get install apache2-utils


