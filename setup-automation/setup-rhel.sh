#!/bin/bash

firewall-cmd --zone=public --add-service=https --permanent
firewall-cmd --reload


#yum remove -y google-rhui-client-rhel8.noarch

#yum -y install httpd

#firewall-cmd --permanent --zone=public --add-service=http
#systemctl reload firewalld

#systemctl enable --now httpd

#firewall-cmd --zone=public --add-service=https --permanent
#firewall-cmd --reload

# Create rhel user and set password
# sudo useradd -m rhel && echo "rhel:redhat" | sudo chpasswd && sudo usermod -aG wheel rhel
