ip tunnel add gre1 mode gre remote 10.35.59.1 local 172.23.9.215 ttl 255
ip link set gre1 up
ip addr add 192.168.84.215/24 dev gre1
ip route add 114.0.0.0/8 dev gre1
ip route add 123.0.0.0/8 dev gre1
ip route add 115.0.0.0/8 dev gre1
ip route add 91.0.0.0/8 dev gre1
