#!/bin/bash
echo "[test]
name=test
baseurl=ftp://192.168.4.254/rhel7
gpgcheck=0" > /etc/yum.repos.d/test.repo
yum clean all &> /dev/null
ynum=`yum repolist | awk '/repolist/{print $NF}'`
if [ $ynum == 0 ];then
  read -p "请输入YUM源地址：" dz
  rm -rf /etc/yum.repos.d/* &> /dev/null
  echo "[test]
name=test
baseurl=$dz
gpgcheck=0" > /etc/yum.repos.d/test.repo
else
  echo "yum创建完成"
fi

useradd -s /sbin/nologin nginx &> /dev/null && echo "nginx用户创建完成"

ngfile=`find /root/ -name "nginx*.gz" -type f | sort -n | tail -1`
if [ -f $ngfile ];then
  tar -xf $ngfile -C /root/
  echo "源码包解压完成"
else
  echo "请拷贝nginx源码包到/root/下!"
  exit
fi

yum -y install gcc make  pcre-devel openssl-devel &> /dev/null
echo "nginx依赖包安装完成"
echo "开始安装nginx！！"
cd /root/nginx*/
./configure --user=nginx --group=nginx --with-http_ssl_module &> /dev/null
make &> /dev/null
make install &> /dev/null

ln -s /usr/local/nginx/sbin/nginx /sbin/  &> /dev/null

nginx &> /dev/null
test=`ps aux | grep -v grep | grep nginx`
[ -n "$test" ] && echo "nginx安装成功"
