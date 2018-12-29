#!/bin/bash
read -p "请输入用户名：" user
read -p "请输入默认shell" defsh
if [ `id $user` ]; then
  usermod -s $defsh $user
else
  useradd -s $defsh $user
fi

######################################
$HOME            当前用户家目录
$PATH            命令查询路径
$LANG            设定语言
$USERNAME        当前用户名
$HOSTNAME        主机名
$PWD             当前路径
$PS1             一级提示符
######################################

# &>
# &>/dev/null

#####################################

read -p "请输入三个整数（以空格间隔）：" num1 num2 num3
if [ $num1 -gt $num2 ];then 
  if [ $num1 -gt $num3 ];then
    if [ $num2 -gt $num3 ];then
     echo "$num1 $num2 $num3"
    else
      echo "$num1 $num3 $num2" 
    fi
  else [ $num1 -lt $num3 ]
     echo "$num3 $num1 $num2"
  fi
else 
  if [ $num2 -gt $num3 ];then
    if [ $num1 -gt $num3 ];then
       echo "$num2 $num1 $num3"
    else
       echo "$num2 $num3 $num1"
    fi
  else
     echo "$num3 $num2 $num1"
  fi
fi
 ######################################


 
