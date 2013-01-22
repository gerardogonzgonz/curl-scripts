#!/bin/bash

curl --verbose -X GET 'http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitionLists/8/' \
	-H "Content-type:application/xml" \
        -H "Accept:application/xml" \
	-u admin:xabiquo | xmlindent -nbe -f

#curl --verbose -PUT 'http://10.60.11.186/api/admin/enterprise/1/appslib/templateDefinitionLists/' -u admin:xabiquo | xmlindent -nbe -f
