# Ubuntu setup and contribution guide

## Introduction

This guide gives step-by-step instruction on how to setup upswing environment locally on a latest Ubuntu machine.

## Pre-requisites

* Virtualbox
* Vagrant
* Ansible
* Git
* GNU Make

## Installations

The following section contains instructions for installing required components.

### VirtualBox

On latest Ubuntu releases you can install virtualbox using apt-get.

```
sudo apt-get install virtualbox
```

### Vagrant

The vagrant version comming in ubuntu repository is not the latest one. Two maintain consistency across team we recommend you to run the latest version of softwares listed above.

For installing vagrant you should first download the latest vagrant version from https://www.vagrantup.com/downloads.html. You can use the packages for Debian listed in the downloads section.

After downloading either double-click on the `.deb` file to install or use the command line to install the package.

```
cd Downloads
sudo dpkg -i vagrant_1.8.1_x86_64.deb
```

### Ansible

We are using ansible for building our environment, and even though ansible version 2.0 is out, its ok to stay with ansible 1.9.x available in official repositories.

```
sudo apt-get install ansible
```

### Git

You should have git installed if you are planning to contribute to upswing. You can skip this if you are downloading the repository as zip from github.

```
sudo apt-get install git-core
```

### Make

Finally if you are planning to use the Makefiles provided in this repository, you should have GNU make installed. We recommend those who dont have experience in using ansible to make use of the Makefile

```
sudo apt-get install make
```

## Get the source and install

Once you are read with all the pre-requisite softwares, clone the github repository using the git client. If you are planning to contribute back with Pull Requests, you should fork the repository and clone the the fork to your local.

```
git clone https://github.com/DigitalEarns/upswing # replace url with your fork
```

Now we should bring up the vagrant vm's and run ansible against those nodes. We have made it simple by providing a Makefile.

```
cd upswing
make install
```

Once the ansible run is successful you will have upswing ready to evaluate.

Happy Hacking ! :)
