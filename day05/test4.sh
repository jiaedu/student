#!/bin/bash
for x in `seq 1 9`
do
  for y in `seq 1 $x`
  do
    z=$[x*y]
    pz=$pz"$x"'*'"$y=$z "
  done
  echo $pz
  pz=""
done
