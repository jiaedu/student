#!/bin/bash
ip=$1     
num=$2       #shuliang
num1=${ip##*.}  #zhuji
num2=${ip%.*}   #wangduan
mm () {
expect << EOF
spawn ssh-copy-id  ${num2}.${num1} 
expect "password"   { send "123456\n" }
expect "#"          { send "\n" }
EOF
}
pvm(){
  scp /etc/yum.repos.d/test.repo ${num2}.${num1}:/etc/yum.repos.d/
  scp /root/mysql/mysql/mysql-5.7.17.tar ${num2}.${num1}:/root/
  scp -r /root/mysql/mysql/mha-soft-student ${num2}.${num1}:/root/
  scp /root/mysql.sh  ${num2}.${num1}:/root/
  pssh -i -H ${num2}.${num1} "hostnamectl set-hostname mysql${num1}"
  #pssh -i -H ${num2}.${num1} "yum -y install perl-*"
  pssh -i -H ${num2}.${num1} "yum -y install /root/mha-soft-student/perl-*"
  pssh -i -H ${num2}.${num1} "yum -y install /root/mha-soft-student/mha4mysql-node-0.56-0.el6.noarch.rpm"
}
for i in `seq $num`
do
  echo ${num2}.${num1}
  mm
  pssh -i -H ${num2}.${num1} "ssh-keygen -f /root/.ssh/id_rsa -N ''"
  pssh -i -H ${num2}.${num1} "mm"
  pvm 
  let num1++
done
