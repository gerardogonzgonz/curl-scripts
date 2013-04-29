#!/bin/bash

idEnterprise={$1}

idBlobStorage={$2}

curl --verbose 'http://localhost/api/admin/enterprises/'$idEnterprise'/blobstorages/'$idBlobStorage'' -X "DELETE" -H "Accept: application/vnd.abiquo.blobstorage+xml;version=2.4" -H "Content-Type: application/vnd.abiquo.blobstorage+xml;version=2.4" -u admintest:passadmin | xmlindent -nbe -f
