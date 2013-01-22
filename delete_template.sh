#!/bin/bash

curl --verbose 'http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitions/1664' \
        -X DELETE \
-u admin:xabiquo | xmlindent -nbe -f
