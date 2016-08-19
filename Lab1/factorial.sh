#! /bin/bash
read n
fact=1
for((i=1;$i<=n;i=$(($i+1))))
do
fact=$(($fact*$i))
done
echo "$fact"
