#!/usr/bin/bash

ns=`kubectl get po --all-namespaces | awk '{print $1}'|sort|uniq`

for i in $ns; do
    po=`kubectl get po -n $i|awk '{print $1}'|grep -v NAME`
    for p in $po; do
        kubectl exec -it $p -n $i ip a

    done
done
