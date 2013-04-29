#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

containerName=$4

idUser=$5

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers' \
        -X "POST" \
        -H "Accept: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -u enteradmin:passenteradmin \
        -d '<blobstoragecontainer>
            <link rel="owner" type="application/vnd.abiquo.user+xml" href="http://localhost/api/admin/enterprises/'$idEnterprise'/users/'$idUser'"/>
            <name>'$containerName'</name>
            </blobstoragecontainer>' | xmlindent -nbe -f
