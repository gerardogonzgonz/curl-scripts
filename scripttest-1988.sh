#!/bin/bash

curl --verbose 'http://10.60.21.33/api/admin/roles/' \
	-X "POST" \
	-u admin:xabiquo \
	-H "Content-type:application/link+xml" \
	-H "Accept:application/link+xml" \
      	-d '<role>
   		<name>USER</name>
	    </role>' | xmlindent -f
