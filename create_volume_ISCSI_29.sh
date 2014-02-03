#!/bin/bash

curl --verbose 'http://10.60.11.30/api/cloud/virtualdatacenters/1/volumes' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.iscsivolume+xml" \
      -H "Content-type:application/vnd.abiquo.iscsivolume+xml" \
      -u admin:xabiquo \
      -d '<volume>
	<link href="http://10.60.11.30/api/admin/datacenters/1/storage/devices/5/pools/693698b4-7416-431b-bdc3-deabcc008607" rel="pool"/>
        <link href="http://10.60.11.30/api/cloud/virtualdatacenters/1/tiers/1" rel="tier"/>
	<name>vvolll</name>
        <uuid>iscsi_volume</uuid>
	<sizeInMB>100</sizeInMB>
        <connection>ip-10.60.11.27:3260-iscsi-iqn.1992-08.com.netapp:sn.99929383-lun-1</connection>
	</volume>'
