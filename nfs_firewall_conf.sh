# make sure we enable nfs in the firewall
sudo firewall-cmd --permanent --add-service=nfs &&
sudo firewall-cmd --permanent --add-service=rpc-bind &&
sudo firewall-cmd --permanent --add-service=mountd &&
sudo firewall-cmd --reload
