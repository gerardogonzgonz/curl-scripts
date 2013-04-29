#!/bin/bash

curl --verbose 'http://localhost/api/admin/enterprises/2/blobstorages/2' \
        -X "PUT" \
        -H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" \
        -u admintest:passadmin \
        -d '<blobstorage>
	<credentials>Abiquotest:enteradmin</credentials>
	<password>555f081c32be546623f9234651356029</password>
	<uri>http://10.60.11.12/auth</uri>
	<provider>swift</provider>
        </blobstorage>' | xmlindent -nbe -f
