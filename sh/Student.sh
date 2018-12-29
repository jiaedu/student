#!/bin/bash
echo '/usr/sbin/ifconfig rhce:0 172.25.0.250'  >>  /etc/bashrc
echo 'echo Taren1 | passwd --stdin root &> /dev/null'  >> /etc/bashrc
ln -s /var/lib/libvirt/images/bin/*   /usr/local/bin/
rm -rf /usr/local/sbin/
ln -s /var/lib/libvirt/images/sbin   /usr/local/
ln -s /var/lib/libvirt/images/conf.d/*  /etc/httpd/conf.d/
echo '/content/  172.25.254.0/24(ro)' > /etc/exports
\cp -r /var/lib/libvirt/images/db /etc/dconf/
id WeekendStudent &> /dev/null
if [ $? -eq 0 ];then
  ln -s /var/lib/libvirt/images/tedu-wallpaper-weekend.png /usr/share/backgrounds/tedu-wallpaper-01.png
else
  ln -s /var/lib/libvirt/images/tedu-wallpaper-2018.png /usr/share/backgrounds/tedu-wallpaper-01.png
fi
ln -s /var/lib/libvirt/images/exam/  /var/www/
echo room9pc01.tedu.cn > /etc/hostname
echo '172.25.0.11  server0  server server0.example.com  webapp0.example.com  www0.example.com' >> /etc/hosts
echo '172.25.0.10  desktop0  desktop  desktop0.example.com  smtp0.example.com' >>  /etc/hosts
echo '172.25.254.254  classroom  content  classroom.example.com  content.example.com' >>  /etc/hosts
echo '172.25.254.250  foundation0 foundation0.example.com rhgls.domain254.example.com' >>  /etc/hosts
ln -s /var/lib/libvirt/images/iso  /
rm -rf /etc/libvirt/qemu
cp -r /var/lib/libvirt/images/qemu  /etc/libvirt/ 
rm -rf /etc/rc.d/rc.local
cp /var/lib/libvirt/images/rc.local /etc/rc.d/
chmod +x /etc/rc.d/rc.local
ln -s /var/lib/libvirt/images/.server.xml  /root
ln -s /var/lib/libvirt/images/.win  /root
ln -s /var/lib/libvirt/images/.win2008.xml   /root
ln -s /var/lib/libvirt/images/.classroom.xml  /root
ln -s /var/lib/libvirt/images/.desktop.xml  /root
mkdir  /var/ftp/share
chmod 777 /var/ftp/share
mkdir  /var/ftp/rhel7
echo '/var/lib/libvirt/images/iso/rhel-server-7.4-x86_64-dvd.iso  /var/ftp/rhel7 iso9660 defaults 0 0' >>  /etc/fstab
mount -a
rm -rf /etc/vsftpd/vsftpd.conf 
ln -s /var/lib/libvirt/images/vsftpd.conf /etc/vsftpd/vsftpd.conf 
systemctl restart vsftpd
ln -s /var/lib/libvirt/images/content   / 
#rm -rf /etc/grub.d
#cp -r /var/lib/libvirt/images/grub.d  /etc
