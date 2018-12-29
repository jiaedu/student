#!/bin/bash
s=`yum list httpd | grep "@"`
if [ -z "$s" ];then 
  yum -y install httpd
  echo "httpd 已经安装完成"
else
  echo "httpd已经安装"
fi
