#!/bin/sh

# APACHE VIRTUAL HOSTS
#######################

# fmoser.at
# -------------------
sudo cp /usr/local/vagrant/hosts/421-fmoser.conf /etc/apache2/sites-available/

if [ -d "/var/www/fmoser.at" ]; then
    sudo a2ensite 421-fmoser.conf
else
    sudo a2dissite 421-fmoser.conf
fi


# kokadi.de
# -------------------
sudo cp /usr/local/vagrant/hosts/422-kokadi.conf /etc/apache2/sites-available/

if [ -d "/var/www/kokadi.de" ]; then
    sudo a2ensite 422-kokadi.conf
else
    sudo a2dissite 422-kokadi.conf
fi

# easy-holiday.at
# -------------------
# sudo cp /usr/local/vagrant/hosts/005-easyholiday.conf /etc/apache2/sites-available/

if [ -d "/var/www/easy-holiday.at" ]; then
    sudo a2ensite 005-easyholiday.conf
else
    sudo a2dissite 005-easyholiday.conf
fi

# vomfeld.at
# -------------------
sudo cp /usr/local/vagrant/hosts/423-vomfeld.conf /etc/apache2/sites-available/

if [ -d "/var/www/vomfeld.at" ]; then
    sudo a2ensite 423-vomfeld.conf
else
    sudo a2dissite 423-vomfeld.conf
fi

# restart apache
sudo service apache2 restart