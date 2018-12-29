#!/bin/bash
for i in `seq 2000`
do
  num=$[i%2]
  [ $num -eq 0 ] && echo $i || echo warn
done
