#!/bin/bash
cd /home/homeassistant/.homeassistant
old_bip=$(grep "broadlinkp2" secrets.yaml | cut -d' ' -f2)
new_bip=$(ip neighbor | grep "b4:43:0d:ee:f4:fe" | cut -d" " -f1)
if [ "$old_bip" != "$new_bip" ]; then
    sed -i "s/$old_bip/$new_bip/g" "secrets.yaml"
    echo "$old_bip changed to $new_bip" >> dotsh.log
    sudo systemctl restart home-assistant@homeassistant.service
fi;
