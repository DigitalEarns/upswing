

# UpSwing

## Getting started

Clone this repo.

### Installing tools

#### Python PIP

You might already have pip installed in OS X if not, do `sudo easy_install pip`

#### Ansible

Install the latest version of `ansible` using `sudo pip install ansible===2.0.0.0`
and test the installation with `ansible --version`

#### Vagrant
Download and install Vagrant from `https://www.vagrantup.com/downloads.html`
test the installation by executing `vagrant --version`
#### VirtualBox

Download and install VirualBox from `https://www.virtualbox.org/`
Open the VirtualBox UI to test


## Bringing up Environment

```
cd upswing
vagrant up
```

This takes some time to bring up all the machines the first time.

## Setting up the Infrastructure

```
cd upswing/ansible
ansible-playbook site.yml -i inventory/vagrant -u vagrant -s
```

if you have `make` installed, the above two actions could be achieved by running
`make install` from the `upswing` directory


## Deploying to Digital Ocean

* Create a Digital Ocean account
* [Setup a API TOKEN](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-api-v2)
* `export DO_API_TOKEN=<Your API TOKEN>`
* `make digital_ocean`

This will do the following
* create an ssh key in you local if it doesn't exist
* copy the ssh public key to digital ocean account with `name=upswing_key`
* create 4 instances in the Singapore region
* setup docker and swarm
