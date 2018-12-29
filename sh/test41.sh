#!/bin/bash
read -p "? :" num
#num=${num:-100}
sum=0
for i in `seq ${num:-100}`
do
  let sum+=i
done
echo $sum
