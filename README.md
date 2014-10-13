vagrant_pp_wlp
==============

Vagrant with Puppet Apply Provision (Masterless). 
Websphere Liberty Profile Module example.

### Deployment Time

6' 40''

### Test Configuration

- Intel Core i5 3270k 
- 16GB Ram DDR3 2100Mhz
- HDD SATA3 WD Green 5200RPM
- Windows 7, 64Bits

# Instructions

## Pre Requisites

- [Vagrant](https://www.vagrantup.com/downloads.html) 2.x
- [Oracle VirtualBox](https://www.virtualbox.org/)
- [Git](http://git-scm.com/download/win)

##### 1- Cloning repos

1.1- Clone my repo
> git clone https://github.com/andrescabrera/vagrant_pp_wlp vagrant_pp_wlp

1.2- Clone WLP module repo to the vagrant_pp_wlp/wlp folder

> cd vagrant_pp_wlp

> git clone https://github.com/WASdev/ci.puppet.wlp modules/wlp

##### 2- Box Download

- [PuppetLabs](https://puppetlabs.com/learn) made [Ubuntu Server	13.10,	i386](http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-1310-i386-virtualbox-puppet.box) 

You can use another Box, but you may need to find Box pre-installed with:
  * Virtualbox 4.3.6 Guest Additions 
  * Puppet 3
(Or manually install Puppet3 via SSH provision).

##### 3- Configure vagrant Box
> Win+R

> "cmd" 

> "Enter"

> vagrant box add ubuntu-1310-i386-virtualbox-puppet ubuntu-1310-i386-virtualbox-puppet.box


##### 4- Liberty Profile Installables
- Download Websphere Liberty Profile installables [from WasDev](https://developer.ibm.com/wasdev/downloads/liberty-profile-using-non-eclipse-environments/)

Move the two jars inside the installables folder, like:

> vagrant_pp_wlp/installables/wlp-developers-extended-8.5.5.3.jar

> vagrant_pp_wlp/installables/wlp-developers-runtime-8.5.5.3.jar

##### 5- Run with vagrant

> vagrant up
