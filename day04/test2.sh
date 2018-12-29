#!/bin/bash
for i in `seq 20`
do
  z=""
  for j in `seq 4`
  do
    x="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz0123456789"
    num=$[RANDOM%62]
    z=$z${x:num:1}
  done
  touch "$z.jpg"
done
