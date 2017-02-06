#!/bin/bash
# script to update Home Assistant
cd /home/homeassistant/.homeassistant
sudo su -s /bin/bash homeassistant
source /srv/homeassistant/homeassistant_venv/bin/activate
pip3 install --upgrade homeassistant
exit
echo "Upgrade script complete, restarting hass" >> dotsh.log