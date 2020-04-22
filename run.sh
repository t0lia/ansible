#!/bin/bash

#ansible -m ping all
#ansible vagrant -a "/bin/echo hello"
ansible-playbook playbooks/update/playbook.yml
ansible-playbook playbooks/nginx-reverse/playbook.yml
#ansible-playbook playbooks/nginx-static/playbook.yml
ansible-playbook playbooks/docker/playbook.yml
ansible-playbook playbooks/run-compose/playbook.yml

