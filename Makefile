all:

info:
	vagrant status

install:
	vagrant up
	cd ansible && ansible-playbook -i inventory/vagrant site.yml -s -u vagrant

digital_ocean:
	cd ansible && ansible-playbook -i inventory/do site.yml -u root

destroy:
	vagrant destroy

.PHONY: all info install digital_ocean destroy
