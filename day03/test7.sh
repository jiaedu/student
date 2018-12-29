#!/bin/bash
for i in `ls /etc/*.conf`
do
  echo $i
  [ "$i" == "/etc/yum.conf"  ] && continue
  tar -czf $i.tar.gz  $i  
done
