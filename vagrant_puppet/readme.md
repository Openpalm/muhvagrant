# Vagrant/Libvirt Fedora cloud vm.
**Please view the Vagrantfile and bootstrap.sh for details about what is being installed.**


## once done, access the webserver and the mysql server as follows
* http://localhost:8080
* mysql --host=192.168.121.9 -u root -p

## let's make sure we install qemu/libvirt and get things running
* sudo dnf install @virtualization
* sudo systemctl enable libvirtd
* sudo systemctl start libvirtd

## go on and do install vagrant and install the vagrant libvirt plugin now
* sudo dnf install vagrant
* vagrant plugin install vagrant-libvirt

## make a vagrant directory somewhere nice:
* mkdir ~/vagrant
* mkdir ~/vagrant/fedora24-cloud-base
* cd ~/vagrant/fedora24-cloud-base

## initilize the vagrant host and provision it
* vagrant init fedora/24-cloud-base; vagrant up --provider libvirt
* vagrant reload --provision


## troubleshooting; refer to vagrant-libvirt's own repo:
* *https://github.com/vagrant-libvirt/vagrant-libvirt*
