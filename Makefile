OS=linux
ARCH=amd64

test:
	ansible -m ping target_root

test2:
	ansible target_root -a "/bin/echo hello"

update:
	ansible-playbook playbooks/update/playbook.yml

init:
	ansible-playbook playbooks/initial/playbook.yml

postgres:
	ansible-playbook playbooks/postgres/playbook.yml

nginx-st:
	ansible-playbook playbooks/nginx-ssl-termination/playbook.yml

nginx-reverse:
	ansible-playbook playbooks/nginx-reverse/playbook.yml

nginx-static:
	ansible-playbook playbooks/nginx-static/playbook.yml

docker:
	ansible-playbook playbooks/docker/playbook.yml

compose:
	ansible-playbook playbooks/run-compose/playbook.yml
