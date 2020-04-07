# Vagrantfile
# -*- mode: ruby -*-
Vagrant.configure("2") do |config|
  config.vm.provider "docker" do |d|
    d.build_dir = "."
    d.has_ssh = true
  end
  config.ssh.password = 'vagrant'
end
