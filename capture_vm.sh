#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/admin/datacenters/9/racks/9/machines/9/virtualmachines/17/action/capture' \
	-H "Content-type:application/vnd.abiquo.links+xml; version=2.0;" \
	-u admin:xabiquo \
	-d '<links>
	<link rel="virtualappliance" type="application/vnd.abiquo.virtualappliance+xml; version=2.0" href="http://10.60.21.187:80/api/cloud/virtualdatacenters/8/virtualappliances/6"/>
	</links>' | xmlindent -nbe -f
