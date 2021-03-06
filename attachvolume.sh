#!/bin/bash

curl --verbose 'http://10.60.21.187/api/cloud/virtualdatacenters/2/virtualappliances/4/virtualmachines/9/storage/volumes' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.acceptedrequest+xml;version=2.0;" \
      -H "Content-type:application/vnd.abiquo.links+xml;version=2.0;" \
      -d '<links>
    		<link href="http://10.60.21.187/api/cloud/virtualdatacenters/2/volumes/510" rel="volume"/>
	  </links>' \
      -u admin:xabiquo | xmlindent -nbe -f
