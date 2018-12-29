#!/bin/bash
myping(){
ping -c1 -w1 $ip$i >/dev/null  && echo "$ip$i is up" || echo "$ip$i is down"
}
ip="192.168.4."
for i in {1..254}
do
  myping &
done
wait
