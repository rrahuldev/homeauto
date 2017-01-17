#!/bin/bash
# script to update Home Assistant
sudo su -s /bin/bash homeassistant
source /srv/homeassistant/homeassistant_venv/bin/activate
pip3 install --upgrade homeassistant
exit
reha