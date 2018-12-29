#!/bin/bash
yum -y install google-chrome-stable_current_x86_64.rpm
sed -i '108s/^/#/' /usr/share/applications/google-chrome.desktop
sed -i '108a Exec=/usr/bin/google-chrome-stable %U --user-data-dir --no-sandbox' /usr/share/applications/google-chrome.desktop
cp /usr/share/applications/google-chrome.desktop /root/桌面
chmod +x /root/桌面/google-chrome.desktop
sed -i '55c exec -a "$0" "$HERE/chrome" "$@" --user-data-dir --no-sandbox' /opt/google/chrome/google-chrome

