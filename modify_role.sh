#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/roles/78' \
      -X "PUT" \
      -u admin:xabiquo \
      -H "Accept: application/vnd.abiquo.role+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.role+xml;version=2.0" \
      -d '<role>
    	<link rel="edit" type="application/vnd.abiquo.role+xml" href="http://10.60.21.187:80/api/admin/roles/78"/>
        <link rel="privileges" type="application/vnd.abiquo.privileges+xml" href="http://10.60.21.187:80/api/admin/roles/78/action/privileges"/>
        <link rel="scope" type="application/vnd.abiquo.scope+xml; version=2.2" href="http://10.60.21.187:80/api/admin/scopes/1"/>
	<link href="http://10.60.21.187/api/config/privileges/6" rel="privilege6"/>
        <blocked>false</blocked>
        <id>78</id>
        <name>qqqqqqqqq</name>
	</role>' | xmlindent -nbe -f
