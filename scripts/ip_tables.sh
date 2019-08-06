sudo iptables -t nat -I PREROUTING -i eth0 -p TCP -d 177.62.11.23/32 --dport 80 -j DNAT --to-destination 10.141.39.237:80

sudo iptables -t nat -I PREROUTING -i eth0 -p TCP -d 177.62.11.23/32 --dport 443 -j DNAT --to-destination 10.141.39.237:443
