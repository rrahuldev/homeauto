#!/bin/bash
# script to update Home Assistant
sudo systemctl stop home-assistant@homeassistant.service
sudo su -s /bin/bash homeassistant
source /srv/homeassistant/bin/activate
pip3 install --upgrade homeassistant
exit
sudo systemctl start home-assistant@homeassistant.service
echo "Upgrade script complete, restarting hass" >> dotsh.log
