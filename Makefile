OS=linux
ARCH=amd64

build:
	ansible -m ping holy

build2:
	ansible vagrant -a "/bin/echo hello"

init:
	ansible-playbook playbooks/initial/playbook.yml

update:
	ansible-playbook playbooks/update/playbook.yml

postgres:
	ansible-playbook playbooks/postgres/playbook.yml

nginx-reverse:
	ansible-playbook playbooks/nginx-reverse/playbook.yml

nginx-static:
	ansible-playbook playbooks/nginx-static/playbook.yml

docker:
	ansible-playbook playbooks/docker/playbook.yml

compose:
	ansible-playbook playbooks/run-compose/playbook.yml
