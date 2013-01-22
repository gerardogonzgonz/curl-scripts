#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/scopes' \
      -X "POST" \
      -H "Accept:application/vnd.abiquo.scope+xml; version=2.0;" \
      -H "Content-type:application/vnd.abiquo.scope+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<scope>
    	<automaticAddDatacenter>false</automaticAddDatacenter>
    	<automaticAddEnterprise>false</automaticAddEnterprise>
	<name>adaaas</name>
	</scope>' | xmlindent -nbe -f
