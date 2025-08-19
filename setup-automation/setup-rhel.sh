#!/bin/bash

firewall-cmd --zone=public --add-service=https --permanent
firewall-cmd --reload

echo "[WebService]" > /etc/cockpit/cockpit.conf
echo "Origins = https://cockpit-$(hostname -f|cut -d"-" -f2).apps.$(grep search /etc/resolv.conf| grep -o '[^ ]*$')" >> /etc/cockpit/cockpit.conf
echo "AllowUnencrypted = true" >> /etc/cockpit/cockpit.conf
systemctl enable --now cockpit.socket

#yum remove -y google-rhui-client-rhel8.noarch

#yum -y install httpd

#firewall-cmd --permanent --zone=public --add-service=http
#systemctl reload firewalld

#systemctl enable --now httpd

#firewall-cmd --zone=public --add-service=https --permanent
#firewall-cmd --reload

# Create rhel user and set password
# sudo useradd -m rhel && echo "rhel:redhat" | sudo chpasswd && sudo usermod -aG wheel rhel
