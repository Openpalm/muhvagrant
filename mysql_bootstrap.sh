mysql -u root -e "DROP USER 'root'@'192.168.%.%';"
mysql -u root -e "DROP USER 'root'@'192.168.100.%';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'192.168.%.%' IDENTIFIED BY 'averysecureword111' WITH GRANT OPTION;"
iptables -A INPUT -p tcp --dport 3306 -j ACCEPT                   
echo "Provisioned MariaDB"
