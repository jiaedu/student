#!/bin/bash
sum=0
i=1
while :
do
  sum=$[sum+i]
  [ $i -eq 100 ] && break
  let i++
done
echo $sum
