#!/bin/bash
while [ ! -f /opt/instruqt/bootstrap/host-bootstrap-completed ]
do
    echo "Waiting for Instruqt to finish booting the VM"
    sleep 1
done

yum remove -y google-rhui-client-rhel8.noarch

yum -y install httpd

firewall-cmd --permanent --zone=public --add-service=http
systemctl reload firewalld

systemctl enable --now httpd
