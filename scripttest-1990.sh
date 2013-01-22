#!/bin/bash

curl --verbose 'http://10.60.21.33/api/admin/roles/144' \
	-X "PUT" \
	-u admin:xabiquo \
	-H "Content-type:application/link+xml" \
	-H "Accept:application/link+xml" \
      	-d '<role>
	<link href="http://10.60.21.33/api/admin/roles/144" rel="edit"/>
	<link href="http://10.60.21.33/api/config/privileges/1" rel="privilege1"/>
	<blocked>false</blocked>
    	<id>144</id>
    	<name>dd</name>
	</role>' | xmlindent -f
