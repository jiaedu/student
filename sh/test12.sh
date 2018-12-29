#!/bin/bash
[ "$1" == "" ] || [ "$2" == "" ] && exit
for i in `ls *.$1`
do
  mv $i ${i%.*}.$2
done
