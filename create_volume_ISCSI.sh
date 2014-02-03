#!/bin/bash

curl --verbose 'http://10.60.11.22:8009/api/cloud/virtualdatacenters/1/volumes' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.iscsivolume+xml" \
      -H "Content-type:application/vnd.abiquo.iscsivolume+xml" \
      -u admin:xabiquo \
      -d '<volume>
	<link href="http://10.60.11.22:8009/api/admin/datacenters/1/storage/devices/34/pools/075615ea-6558-45de-b40f-96ec2413735d" rel="pool"/>
        <link href="http://10.60.11.22:8009/api/cloud/virtualdatacenters/1/tiers/3" rel="tier"/>
	<name>vvolll</name>
        <uuid>iscsi_volume</uuid>
	<sizeInMB>100</sizeInMB>
        <connection>ip-10.60.11.27:3260-iscsi-iqn.1992-08.com.netapp:sn.99929383-lun-1</connection>
	</volume>' | xmlindent -nbe -f
