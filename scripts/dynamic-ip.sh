#!/bin/bash
lb_ip=$(lxc list | awk '{ print $2, $6}' | xargs | awk '{print $3, "ansible_host=" $4}')
web1_ip=$(lxc list | awk '{ print $2, $6}' | xargs | awk '{print $5, "ansible_host=" $6}')
web2_ip=$(lxc list | awk '{ print $2, $6}' | xargs | awk '{print $7, "ansible_host=" $8}')
web3_ip=$(lxc list | awk '{ print $2, $6}' | xargs | awk '{print $9, "ansible_host=" $10}')
cat  > inventory/site-hosts <<EOL
[lb]
${lb_ip}
[web]
${web1_ip}
${web2_ip}
${web3_ip}
[all:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_user=ubuntu
EOL
