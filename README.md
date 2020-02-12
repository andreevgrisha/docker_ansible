# docker_ansible_1.0.2
Run and maintenance dockerize infrastructre (3 servers) by ansible playbooks.

Run:
playbook_infrastructure.yml + ip_gather.sh -> dyno_inventory.ini
playbook_infrastructure.yml + ssh_provision.sh -> make containers as ssh-hosts

Maintenance:
playbook_provision.yml + dyno_inventory.ini
