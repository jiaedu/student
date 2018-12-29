#!/bin/bash
ip(){
  nmcli connection modify $netname ipv4.method manual ipv4.addresses "$ipname/24" connection.autoconnect yes
}
read -p "请输入网卡名称：" netname
a=`ifconfig $netname | grep "inet "`
if [ -z "$a" ];then
  read -p "请输入ip地址：" ipname
  ip $netname $ipname
else
  echo "此网卡已经配置ip"
fi

