#!/bin/sh

ansible-playbook playbook_infrastructure.yml

echo
echo
echo "Run playbook with dyno-inventory make in previous step"
echo
echo "Whait a little for all services will up"
echo
sleep 15

ansible-playbook -i dyno_inventory.ini playbook_provision.yml
