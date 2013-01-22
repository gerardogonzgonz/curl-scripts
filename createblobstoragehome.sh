#!/bin/bash

idEnterprise={$1}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages' \
	-X "POST" \
	-H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-u admin:xabiquo \
	-d '<blobstorage>
	<credentials>Abiquo:admin</credentials>
	<password>c69a39bd64ffb77ea7ee3369dce742f3</password>
	<provider>swift</provider>
	<uri>http://192.168.1.105:8080/auth/v1.0</uri>
    	</blobstorage>' | xmlindent -nbe -f
