# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.network :forwarded_port, guest: 80, host: 8080, auto_correct:true
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder "./playbooks", "/home/vagrant/playbooks"
  config.vm.synced_folder "./html", "/home/vagrant/html"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
  end

  config.vm.provision "shell" do |shell|
    shell.path = "./install_ansible.sh"
  end

  config.vm.provision "ansible_local" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "./playbooks/run_nginx_container.yml"
    ansible.inventory_path  = "./playbooks/inventory"
    run = "always"
  end
end
