#!/bin/sh

# APACHE VIRTUAL HOSTS
#######################

# fmoser.at
sudo cp /usr/local/vagrant/hosts/421-fmoser.conf /etc/apache2/sites-available/
sudo a2ensite 421-fmoser.conf

# restart apache
sudo service apache2 restart