#!/bin/bash

curl --verbose 'http://10.60.11.22:8009/api/cloud/virtualdatacenters/1/volumes' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.volume+xml; version=2.6;" \
      -H "Content-type:application/vnd.abiquo.volume+xml; version=2.6;" \
      -u admin:xabiquo \
      -d '<volume>
	<link href="http://10.60.11.22:8009/api/cloud/virtualdatacenters/1/tiers/4" rel="tier"/>
	<name>API Volume</name>
	<sizeInMB>20</sizeInMB>
	</volume>' | xmlindent -nbe -f
