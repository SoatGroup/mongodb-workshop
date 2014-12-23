# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "vm-formation"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "https://c15b33058b613c66af39bd380870b109c0bb28a1.googledrive.com/host/0B60RywJ46aLOTXhTUDFaalB3UEE/vm-formation.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 27017, host: 27017

  config.ssh.username = "formation"
  
  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
     vb.gui = true
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
   end
   
   
   config.vm.provision :chef_solo do |chef|
	chef.add_recipe "mongodb"
	chef.add_recipe "genghis"
   
  end

end
