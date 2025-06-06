#!/bin/bash
yum remove -y google-rhui-client-rhel8.noarch

yum -y install httpd

firewall-cmd --permanent --zone=public --add-service=http
systemctl reload firewalld

systemctl enable --now httpd
