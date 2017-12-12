#!/usr/bin/bash
for i in `seq 2 36`; do
        ip tunnel add gre$i mode gre remote 172.25.13.$i local 10.35.48.170 ttl 255
        ip link set gre$i up
        ip addr add 192.168.86.170 peer 192.168.86.$i dev gre$i
done

