# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-22.04"

  config.vm.define :controlnode do |controlnode|
    controlnode.vm.provision "shell", path: "controlnode.sh"
    controlnode.vm.hostname = "controlnode.localnet"
    controlnode.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define :targetnode do |targetnode|
#    targetnode.vm.provision "shell", path: "targetnode-bootstrap.sh"
    targetnode.vm.hostname = "targetnode.localnet"
    targetnode.vm.network "private_network", ip: "192.168.56.11"
  end

  config.vm.provider "virtualbox" do |vb|
    #   # Display the VirtualBox GUI when booting the machine
    #   vb.gui = true
    #
    vb.memory = "1024"
    vb.cpus = "1"
  end
  config.vm.provision "shell", path: "bootstrap.sh"
end
