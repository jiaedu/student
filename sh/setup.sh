#!/bin/bash

yum install -y gcc gcc-c++ openssl-devel libffi-devel readline-devel zlib-devel
retval=$?
if [ $retval -ne 0 ]; then
    echo "本地yum源安装依赖包失败，尝试网络安装"
    rm -f /etc/yum.repos.d/*.repo
    cp CentOS7-Base-163.repo /etc/yum.repos.d/
    yum install -y gcc gcc-c++ openssl-devel libffi-devel readline-devel zlib-devel
    retval=$?
    if [ $retval -ne 0 ]; then
	echo "通过网络安装仍然失败，请手动配置yum"
	exit 1
    fi
fi

tar xJf Python-3.6.1.tar.xz
cd Python-3.6.1
./configure --prefix=/usr/local
make && make install
retval=$?
if [ $retval -ne 0 ]; then
    echo "安装python3失败，请手工检查"
    exit 2
fi
echo "安装python3成功，请运行python3"
