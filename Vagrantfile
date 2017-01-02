# -*- mode: ruby -*-
# vi: set ft=ruby :
#
Vagrant.configure("2") do |config|
  config.vm.box = "fedora/24-cloud-base"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "mysql_bootstrap.sh"

  # nginx
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 8080, host: 8888
  # synced files
  config.vm.synced_folder "sync_misc/",
      "/home/vagrant/sync_misc",
      type: "nfs"

#  config.vm.synced_folder "www",
#      "/srv/www",
#      group: "root",
#      owner: "root"

end
