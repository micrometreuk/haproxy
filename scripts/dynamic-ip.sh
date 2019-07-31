#!/bin/bash
lb1_ip=$(lxc list | grep lb | awk '{print $2, "ansible_host=" $6}')
web1_ip=$(lxc list | grep web1 | awk '{print $2, "ansible_host=" $6}')
web2_ip=$(lxc list | grep web2 | awk '{print $2, "ansible_host=" $6}')
cat  > inventory/site-hosts <<EOL
[lb]
${lb1_ip}
[web]
${web1_ip}
${web2_ip}
[all:vars]
ansible_python_interpreter=/usr/bin/python3
ansible_user=ubuntu
EOL
