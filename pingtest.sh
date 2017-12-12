x=0
for i in `seq $1 $2`
do
    mess=$(ping -c 1 10.35.48.$i|grep icmp_seq|wc -l)
    if [ $mess -ne 0 ]; then
         echo "host 10.35.48.$i is reachable"
    else
         let x++
         a[x]=10.35.48.$i
         echo "host 10.35.48.$i is unreachable"
    fi
done
for e in ${a[@]};do
echo "host unreachable: $e, total: $x"
done
