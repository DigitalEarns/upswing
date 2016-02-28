.PHONY: all
all:

.PHONY: info
info:
	vagrant status

.PHONY: install
install:
	vagrant up
	cd ansible && ansible-playbook -i inventory/vagrant site.yml -s -u vagrant

.PHONY: destroy
destroy:
	vagrant destroy
