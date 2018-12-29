#!/bin/bash
x=`grep "vendor_id" /proc/cpuinfo >/dev/null | grep GenuineIntel >/dev/null`
[ -z $x ] && echo intel || echo adm
