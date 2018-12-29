#!/bin/bash
[ -z $1 ] && exit
yum -y install vsftpd > /dev/null
useradd $1 
cd ~tomcat ; echo "hello" > test.txt
for i in {1..8}
do
  X="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  num=$[RANDOM%62]
  pass=$pass${X:num:1}
done
echo $pass | passwd --stdin $1 > /dev/null
mail -s "password" root << EOF
创建$1用户密码为：$pass
EOF
systemctl start vsftpd > /dev/null
systemctl enable vsftpd > /dev/null
