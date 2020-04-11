#!/bin/sh

PTH="/home/gri/docker_ansible/dyno_inventory.ini"
rm -f $PTH

IP_F=$(docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} dyno_Frontend)
IP_B=$(docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} dyno_Backend)
IP_D=$(docker inspect --format {{.NetworkSettings.Networks.bridge.IPAddress}} dyno_Database)

echo -e '\n[frontend]' >> $PTH
echo $IP_F >> $PTH

echo -e '\n[backend]' >> $PTH
echo $IP_B >> $PTH

echo -e '\n[database]' >> $PTH
echo $IP_D >> $PTH

echo -e '\n[vse:children]\nfrontend\nbackend\ndatabase' >> $PTH

echo -e '\n[vse:vars]\nansible_ssh_user=root\nansible_ssh_pass=pass' >> $PTH
