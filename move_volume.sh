#!/bin/bash
v=$1
o=$2
t=$3

curl --verbose 'http://10.60.21.187/api/cloud/virtualdatacenters/'$o'/volumes/'$v'/action/move' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.moved-volume+xml; version=2.0;" \
      -H "Content-type:application/vnd.abiquo.links+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<links>
	<link href="http://10.60.21.187/api/cloud/virtualdatacenters/'$t'" rel="virtualdatacenter"/>
	</links>' | xmlindent -nbe -f
