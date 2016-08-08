#!/bin/sh    
hostname=`hostname`

##########################################
## OpenERP Backup
##########################################

# Stop OpenERP Server
sudo service odoo stop

# Dump DBs
for db in ultiodoo
do
  date=`date +"%Y%m%d_%H%M%N"`
  filename="/home/ubuntu/odoo-setup-scripts/backup/${hostname}_${db}_${date}.sql"
  pg_dump -U odoo -E UTF-8 -p 5432 -F p -b -f $filename $db
  gzip $filename
done

# Start OpenERP Server
sudo service odoo start

exit 0
