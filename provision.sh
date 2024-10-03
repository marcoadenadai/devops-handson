#!/usr/bin/env bash
echo "Installing Apache and setting it up.."
alias apt="apt-get";
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y apache2
sudo cp -r /vagrant/html/* /var/www/html/

# Start & Enable Apache2 Service
sudo service apache2 start
sudo update-rc.d apache2 defaults
