#!/bin/bash
#检查yum是否可用
yum clean all
list=`yum repolist | awk '/repolist/{print $NF}'`
[ $list == 0 ] && echo "yum err!";exit 

#安装nginx
yum -y install gcc openssl-devel pcre-devel
[ -f nginx-1.12.2.tar.gz ] || echo "nginx没有安装源" ;exit
[ ! -d /opt/nginx ] && mkdir -p  /opt/nginx
tar -xzf nginx-1.12.2.tar.gz -C /opt/nginx/
cd /opt/nginx/
.configure
make
make install

