#!/bin/bash

idEnterprise={$1}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages' \
	-X "POST" \
	-H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-u admin2:xabiquo \
	-d '<blobstorage>
	<credentials>Abiquo2:admin2</credentials>
	<password>c69a39bd64ffb77ea7ee3369dce742f3</password>
	<provider>swift</provider>
	<uri>http://10.60.11.12/auth</uri>
    	</blobstorage>' | xmlindent -nbe -f
