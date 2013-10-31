# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "official-precise32"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box"
  #config.vm.customize ["modifyvm", :id, "--ioapic", "on", "--memory", "2048", "--cpus", "2"]
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id,  "--ioapic", "on", "--memory", "2048", "--cpus", "2"]
  end
  #config.vm.forward_port 5432, 5432
  config.vm.network "forwarded_port", guest: 5432, host: 5432
  config.vm.host_name = "postgresql"
  # config.vm.provision :puppet, :module_path => "modules" do |puppet|
  config.vm.provision :puppet do |puppet|
    puppet.options = "--verbose --debug"
    puppet.module_path = "./modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
  end
end
