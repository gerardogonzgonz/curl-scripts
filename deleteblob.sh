#!/bin/bash
idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}

container={$4}

blobName={$5}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'/blobstoragecontainers/'$container'/blobs/'$blobName'' \
        -X "DELETE" \
        -H "Accept: application/vnd.abiquo.blob+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blob+xml;version=2.4" \
        -u user2:xabiquo | xmlindent -nbe -f
