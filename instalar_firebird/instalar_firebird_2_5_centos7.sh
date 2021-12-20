#!/bin/bash
yum --enablerepo=extras install epel-release -y
yum search firebird
yum install firebird-superserver
systemctl enable firebird-superserver
getsebool -a | grep firebird
systemctl start firebird-superserver
systemctl status firebird-superserver
firewall-cmd --permanent --zone=public --add-port=3050/tcp
firewall-cmd --reload