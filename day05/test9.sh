#!/bin/bash
[ ! -z $1 ] && [ ! -z $2 ] ||  exit
for i in `ls ./*.$1`
do
  mv $i ${i%\.*}.$2 &>/dev/null
done
