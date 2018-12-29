#!/bin/bash
[ -z $1 ] || [ -z $2 ] && echo "格式：$0 原扩展名 新扩展名" && exit
for i in `ls *.$1 2> /dev/null`
do
  mv $i ${i%.*}.$2
done
