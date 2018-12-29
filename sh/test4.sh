#!/bin/bash
[[ $1 =~ [0-9]{1,} ]] || exit
for l in `seq $1`
do
  for i in `seq $1`
  do
    echo -n "* "
  done
  echo
done 
