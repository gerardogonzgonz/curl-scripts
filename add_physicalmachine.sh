#!/bin/bash

curl --verbose -u admin:xabiquo http://10.60.11.30/api/admin/datacenters/4/racks/4/machines -X POST -H "accept:application/vnd.abiquo.machine+xml" -H "content-type:application/vnd.abiquo.machine+xml" -d @oracle_definition.xml | xmlindent -nbe -f
