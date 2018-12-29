#!/bin/bash
part(){
parted  "/dev/$1" mktable gpt yes &> /dev/null
parted  "/dev/$1" mkpart 1 ext4 0  5G I &> /dev/null
parted  "/dev/$1" mkpart 2 ext4 5G 10G I  &> /dev/null
mkfs.ext4 "/dev/$1"1  &> /dev/null
mkfs.ext4 "/dev/$1"2  &> /dev/null
[ -d "/part/$1"1 ] || mkdir -p "/part/$1"1 && mount "/dev/$1"1 "/part/$1"1
[ -d "/part/$1"2 ] || mkdir -p "/part/$1"2 && mount "/dev/$1"2 "/part/$1"2
}

part vdb
part vdc
