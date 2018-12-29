#!/bin/bash
mknum(){
x='abcdefghigklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789'
num=$[RANDOM%62]
pass=$pass${x:num:1}
}
for i in {1..8}
do
  mknum 
done
echo $pass
