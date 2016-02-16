all:

info:
	vagrant status

install:
	export ANSIBLE_HOST_KEY_CHECKING=false
	cd ansible && ansible-playbook -i inventory/vagrant site.yml -s -u vagrant

destroy:
	vagrant destroy
