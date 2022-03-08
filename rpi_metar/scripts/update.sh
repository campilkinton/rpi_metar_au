#!/bin/bash

#Script to update rpi_metar_au to newest version on develop branch

sudo systemctl stop rpi_metar_au
sudo su <<EOF
source /opt/rpi_metar_au/bin/activate
pip install -U git+https://github.com/thommo17/rpi_metar_au.git@develop
exit
EOF
sudo systemctl start rpi_metar_au





























