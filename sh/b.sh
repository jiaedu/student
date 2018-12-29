#!/bin/bash
for i in `grep "bash" /etc/passwd`
do
  user=${i%%:*}
  x=`grep $user /etc/shadow`
  x1=${x%%:*}
  x2=${x#*:}
  echo "$x1 --> ${x2%%:*}"
done 
