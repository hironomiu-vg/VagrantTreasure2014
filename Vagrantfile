# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos-6.4-puppet"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-64-x64-vbox4210.box"

  config.vm.define :db1 do |db|
    db.vm.hostname = "treasure2014"
    db.vm.network :private_network, ip: "192.168.56.14" 
    db.vm.provider :virtualbox do |vb|
      vb.name = "treasure2014"
    end
    db.vm.provision :puppet, :options => '--modulepath="/vagrant/puppet/modules":"/vagrant/puppet/roles"' do |puppet|
       puppet.manifests_path = "./puppet/manifests"
       puppet.manifest_file  = "app.pp"
    end
  end
end
