#!/bin/bash
cd /home/homeassistant/.homeassistant
git add .
git status
echo -n "Enter the Description for the Change: "
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master
