#!/bin/bash

echo 'root:pass' | chpasswd
yum install -y openssh-server
systemctl enable sshd.service
ssh-keygen -A
/usr/sbin/sshd -D
sleep 1h
