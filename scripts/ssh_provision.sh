#!/bin/bash

echo 'root:pass' | chpasswd
apt-get clean
apt-get update
apt-get install -y openssh-server python
ssh-keygen -A
/usr/sbin/sshd -D
sleep 1h
