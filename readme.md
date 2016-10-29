# Vagrant/Libvirt Fedora cloud vm.
**Please view the Vagrantfile and bootstrap.sh for details about what is being installed.**

## let's make sure we install qemu/libvirt and get things running
* sudo dnf install @virtualization
* sudo systemctl enable libvirtd
* sudo systemctl start libvirtd

## go on and do install vagrant and install the vagrant libvirt plugin now
* sudo dnf install vagrant
* vagrant plugin install vagrant-libvirt

### make a vagrant directory somewhere nice:
* mkdir ~/vagrant
* mkdir ~/vagrant/fedora24-cloud-base
* cd ~/vagrant/fedora24-cloud-base
* vagrant init fedora/24-cloud-base; vagrant up --provider libvirt

### once the machine is up and running, let's provision it with nice things. copy your favorite bootstrap.sh (naming convention for provisionning files - you can take a look at the ine in this repo which is made for a Typo3 installation) and then:
* vagrant reload --provision


#### troubleshooting; refer to vagrant-libvirt's own repo:
https://github.com/vagrant-libvirt/vagrant-libvirt
