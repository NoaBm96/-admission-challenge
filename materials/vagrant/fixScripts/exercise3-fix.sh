#!/bin/bash
#change apache to granted
sudo sed -i 's/denied/granted/' /etc/apache2/sites-available/000-default.conf
sudo /etc/init.d/apache2 restart

