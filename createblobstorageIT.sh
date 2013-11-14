#!/bin/bash

idEnterprise={$1}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages' \
	-X "POST" \
	-H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" \
	-u adminIT:passadmin \
	-d '<blobstorage>
	<credentials>IT Team:adminIT</credentials>
	<password>7a25b0bc04e77a2f7453dd021168cdc2</password>
	<provider>swift</provider>
	<uri>http://10.60.11.12/auth</uri>
    	</blobstorage>' | xmlindent -nbe -f
