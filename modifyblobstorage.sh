#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/1/blobstorages/2' \
        -X "PUT" \
        -H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" \
        -u admin:xabiquo \
        -d '<blobstorage>
	<credentials>enterprise1:admin</credentials>
	<password>password</password>
	<uri>http://10.60.11.12/auth</uri>
	<provider>swift</provider>
        </blobstorage>' | xmlindent -nbe -f
