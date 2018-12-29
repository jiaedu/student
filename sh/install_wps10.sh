#!/bin/bash
# 安装WPS软件
yum  -y  install  wps-office-10.1.0.5672-1.a21.x86_64.rpm
# 安装微软office字体
yum  -y  install  fontconfig
tar  xpPf  msfonts.tar.gz
fc-cache
