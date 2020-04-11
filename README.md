# docker_ansible_1.0.2
Run and maintenance dockerize infrastructre (3 servers) by ansible playbooks.

Run start.sh:
step 1:
playbook_infrastructure.yml + ip_gather.sh + ssh_provision.sh > dyno_inventory.ini +  make containers as ssh-hosts.
step 2:
playbook_infrastructure.yml + dyno_inventory.ini > works with containers as ssh-hosts.

