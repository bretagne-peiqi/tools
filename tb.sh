#!/usr/bin/bash

for i in `seq 2 36`; do
        iptables -t nat -A POSTROUTING -s 192.168.86.$i -j SNAT --to-source 10.35.48.170
        #echo $i
done

