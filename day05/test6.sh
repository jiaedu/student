#!/bin/bash
for mynet in `ifconfig | grep ":\{1\} " | awk '{print $1}'`
do
  echo "$mynet"
  #echo  "${mynet%%:*} "
done
read -p "netname:" net
while :
do
  ifconfig $net | grep "RX packets"
  ifconfig $net | grep "TX packets"
  sleep 2
  echo
done
