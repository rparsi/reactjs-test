#!/usr/bin/env bash

sudo apt-get install apache2
sudo systemctl enable apache2

sudo a2enmod rewrite
sudo systemctl restart apache2

cp rahi.reactjs-test.com.conf /etc/apache2/sites-available/

sudo a2ensite rahi.reactjs-test.com
sudo systemctl reload apache2