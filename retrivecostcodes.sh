#!/bin/bash

curl --verbose 'http://10.60.21.206/api/config/costcodes' \
        -X GET \
        -H "Content-type:application/xml" \
        -H "Accept:application/xml" \
	-u "admin:xabiquo" | xmlindent -f
