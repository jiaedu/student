#!/bin/bash
expect <<EOF
spawn ssh 192.168.4.110
expect password  { send "123\n" }
expect #         { send "yum -y install httpd\n"}
expect #         { send "systemctl start httpd\n"}
expect #         { send "exit\n"}
EOF
