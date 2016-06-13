#! /usr/bin/env bash

# get odoo key
wget -O __odoo.key https://nightly.odoo.com/odoo.key
apt-key add __odoo.key
rm __odoo.key

# add to sources
echo "deb http://nightly.odoo.com/9.0/nightly/deb/ ./" >> /etc/apt/sources.list

apt-get update && apt-get install odoo



