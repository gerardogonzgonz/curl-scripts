#!/bin/bash
idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

container={$4}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers/'$container'' \
        -X "DELETE" \
        -H "Accept: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstoragecontainer+xml;version=2.4" \
        -u enteradmin:passenteradmin | xmlindent -nbe -f
