# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  #Box descargada de http://puppet-vagrant-boxes.puppetlabs.com/
  config.vm.box = "ubuntu-1310-i386-virtualbox-puppet"
  
  config.vm.hostname = "liberty1.freelancetech.org"
  
  config.vm.network "forwarded_port", guest: 9080, host: 9085
  config.vm.network "private_network", type: "dhcp"

  # config.vm.network "public_network"

  #config.vm.synced_folder "../data", "/home/data"

   config.vm.provider "virtualbox" do |vb|
	 #vb.gui = true  
     vb.customize ["modifyvm", :id, "--memory", "512"]
   end
   
   #Borro repos de puppetlabs que devuelven 404
   config.vm.provision "shell", path: "shell-provision/borrarReposPuppetLabs.sh"
    
   config.vm.provision "puppet" do |puppet|
     puppet.manifests_path = "manifests"
     puppet.manifest_file  = "default.pp"
     puppet.module_path = "modules"
     puppet.hiera_config_path = "hiera.yaml"
	 #puppet.options = "--verbose --debug"
   end

end
