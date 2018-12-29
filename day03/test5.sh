#!/bin/bash
read -p "请输入：" zifu
case $zifu in
[a-Z]*)
  echo "字母"
  ;;
[0-9]*)
  echo "数字"
  ;;
*)
  echo "其他字符"
  ;;
esac
