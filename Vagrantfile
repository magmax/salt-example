# -*- coding:utf-8; tab-width:4; mode:ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.define :saltexample do |vm_config|
    vm_config.vm.box = 'wheeze64'
    vm_config.vm.box_url =  'http://puppet-vagrant-boxes.puppetlabs.com/debian-70rc1-x64-vbox4210.box'
    vm_config.vm.host_name = 'salt-example'

    vm_config.vm.synced_folder "salt/roots/salt", "/srv/salt"
    vm_config.vm.synced_folder "salt/roots/pillar", "/srv/pillar"

    vm_config.vm.network :forwarded_port, host: 10080, guest: 80

    vm_config.vm.provision :salt do |salt|
      salt.minion_config = "salt/minion"
      salt.run_highstate = true
    end
  end

end

