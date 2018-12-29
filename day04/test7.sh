#!/bin/bash
grep -n "^1[27][72]" /etc/hosts
grep -n "bash$" /etc/passwd
grep -n "[0-9]\{3,\}" /etc/passwd
grep -n "^server" /etc/chrony.conf
grep -n "Port" /etc/ssh/sshd_config
grep -n "[ra][od][om]t\{0,1\}" /etc/passwd
grep -n "\[.\{26\}\]" /var/log/httpd/access_log
grep -n "Failed" /var/log/secure
uptime | grep "[0-9]\.[0-9][0-9], [0-9]\.[0-9][0-9], [0-9]\.[0-9][0-9]"
