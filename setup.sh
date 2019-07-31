# this script was created to document and address dicovered issues.
# 1. ansible complains about LXD containers it did not make.
# 2. changing IP's is not good, simpler method required.
# 3. created servers are not accesable
#


# Create desired containers
make containers


make deploy

# Display existing containers and validate creation
lxc list

# replace ip with the haproxy (lb) container's ip this
# for i in seq 1 2000; do curl http://10.246.154.247/; done

# install apache utils
sudo apt-get install apache2-utils


