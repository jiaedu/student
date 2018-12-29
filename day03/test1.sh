#!/bin/bash
if [ $# -ne 1 ];then
  echo  "请输入创建虚拟机数量" 
  exit
fi
i=1
while :
do
  #clone-vm7 $i &
  echo "创建虚拟机$i"
  [ $i -eq $1 ] && break
  let i++
done
