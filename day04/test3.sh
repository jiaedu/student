#!/bin/bash
for i in `cat /etc/passwd`
do
  echo $i
  echo ${i%%:*}
done
