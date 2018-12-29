#!/bin/bash
for i in `cat user.txt`
do
  useradd $i
  echo "123" | passwd --stdin $i
done
