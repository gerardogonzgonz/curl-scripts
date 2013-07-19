#!/bin/bash
while(true);
do
curl --verbose http://10.60.11.20:80/api/admin/datacenters/30/racks/30/machines/25/virtualmachines?sync=true -u admin:xabiquo | xmlindent -nbe -f
done
