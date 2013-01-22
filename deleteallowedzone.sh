#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

idAllowedZone={$3}


curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'/blobstoragezones/'$idAllowedZone'' \
        -X "DELETE" \
        -H "Accept: application/vnd.abiquo.blobstoragezones+xml;version=2.4" \
        -H "Content-Type: application/vnd.abiquo.blobstoragezones+xml;version=2.4" \
        -u admin2:xabiquo | xmlindent -nbe -f
