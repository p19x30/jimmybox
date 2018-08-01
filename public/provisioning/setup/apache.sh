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
sudo cp /usr/local/vagrant/hosts/005-easyholiday.conf /etc/apache2/sites-available/

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

# leanschi.com
# -------------------
sudo cp /usr/local/vagrant/hosts/424-leanschi.conf /etc/apache2/sites-available/

if [ -d "/var/www/leanschi.com" ]; then
    sudo a2ensite 424-leanschi.conf
else
    sudo a2dissite 424-leanschi.conf
fi

# sternpunkt.at
# -------------------
sudo cp /usr/local/vagrant/hosts/425-sternpunkt.conf /etc/apache2/sites-available/

if [ -d "/var/www/sternpunkt.at/public" ]; then
    sudo a2ensite 425-sternpunkt.conf
else
    sudo a2dissite 425-sternpunkt.conf
fi

# alle-noten.de
# -------------------
sudo cp /usr/local/vagrant/hosts/426-* /etc/apache2/sites-available/

if [ -d "/var/www/alle-noten.de" ]; then
    sudo a2ensite 426-*.conf
else
    sudo a2dissite 426-*.conf
fi

# bergsportoutlet.at
# -------------------
sudo cp /usr/local/vagrant/hosts/427-* /etc/apache2/sites-available/

if [ -d "/var/www/bergsportoutlet.at" ]; then
    sudo a2ensite 427-*.conf
else
    sudo a2dissite 427-*.conf
fi

# lorica-labo.com
# -------------------
sudo cp /usr/local/vagrant/hosts/428-* /etc/apache2/sites-available/

if [ -d "/var/www/lorica-labo.com" ]; then
    sudo a2ensite 428-*.conf
else
    sudo a2dissite 428-*.conf
fi

# hydro2go.de
# -------------------
sudo cp /usr/local/vagrant/hosts/429-hydro2go.conf /etc/apache2/sites-available/

if [ -d "/var/www/hydro2go.de" ]; then
    sudo a2ensite 429-hydro2go.conf
else
    sudo a2dissite 429-hydro2go.conf
fi

# warmlight.at
# -------------------
sudo cp /usr/local/vagrant/hosts/430-warmlight.conf /etc/apache2/sites-available/

if [ -d "/var/www/warmlight.at" ]; then
    sudo a2ensite 430-warmlight.conf
else
    sudo a2dissite 430-warmlight.conf
fi

# panorama3d.at
# -------------------
sudo cp /usr/local/vagrant/hosts/431-panorama3d.conf /etc/apache2/sites-available/

if [ -d "/var/www/panorama3d.at" ]; then
    sudo a2ensite 431-panorama3d.conf
else
    sudo a2dissite 431-panorama3d.conf
fi


# restart apache
sudo service apache2 restart