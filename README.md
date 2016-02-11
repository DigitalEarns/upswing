# Upswing

## How to get started

clone this repo.
```
cd upswing
vagrant up
```

This takes some time to bring up all the machines the first time. Once all the machines are up
to setup the infrastructure.

```
cd ansible
ansible-playbook site.yml -i inventory/vagrant -u vagrant -s
```
