# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/debian-8.8"
  config.vm.hostname = 'infratestdemo.localhost.local'
  
  config.vm.provider "virtualbox" do |provider,override|
    provider.memory = 1024
    provider.cpus = 2
  end

  config.vm.provider :linode do |provider, override|
    provider.api_key = "#{ENV['LINODE_API']}"
    provider.datacenter = 'fremont'
    provider.distribution = 'Debian 8'
    provider.plan = 'Linode 2048'
    provider.group = 'testing'
    
    override.vm.box_url = "https://github.com/displague/vagrant-linode/raw/master/box/linode.box"
    override.vm.box = 'linode'
    override.ssh.private_key_path = '~/.ssh/id_rsa'
  end

  config.vm.synced_folder 'saltstack', '/srv/'
  config.vm.synced_folder 'saltstack/etc/minion.d', '/etc/salt/minion.d'

  config.vm.provision :salt do |salt|
    salt.verbose = true
    salt.colorize = true
    salt.masterless = true
    salt.run_highstate = true
    salt.log_level = 'info'
  end

end
