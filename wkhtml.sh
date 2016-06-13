#! /usr/bin/env bash

#
# pull in wkhtmltopdf to generate invoices as PDF from Odoo
#

wget http://download.gna.org/wkhtmltopdf/0.12/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
tar -xvf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
ln -s /home/ubuntu/odoo-setup-scripts/wkhtmltox/bin/wkhtmltopdf /usr/bin/wkhtmltopdf
rm wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
