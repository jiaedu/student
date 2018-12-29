#!/bin/bash
read -p "请输入（3=石头|2=剪刀|1=布）：" nump
numr=$[RANDOM%3+1]
case $numr in
3)
  echo "PC是石头" ;;
2)
  echo "PC是剪刀" ;;
1)
  echo "PC是布"   ;;
esac
if [ $nump -gt $numr ];then
   if [ $nump == 3 ] && [ $numr == 1 ];then
     echo "你输了！"
   else
     echo "你赢了！" 
   fi
fi
[ $nump -eq  $numr ] && echo "平"
if [ $nump -lt $numr ];then
   if [ $nump == 1 ] && [ $numr == 3 ];then
     echo "你赢了！" 
   eles
     echo "你输了！"
   fi
fi
  

