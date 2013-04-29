#!/bin/bash

curl --verbose 'http://localhost/api/admin/roles/4' \
      -X "PUT" \
      -u admin:xabiquo \
      -H "Accept: application/vnd.abiquo.role+xml;version=2.4" \
      -H "Content-Type: application/vnd.abiquo.role+xml;version=2.4" \
      -d '<role>
    	<link rel="edit" type="application/vnd.abiquo.role+xml" href="http://localhost:80/api/admin/roles/78"/>
        <link rel="privileges" type="application/vnd.abiquo.privileges+xml" href="http://localhost:80/api/admin/roles/4/action/privileges"/>
        <link rel="scope" type="application/vnd.abiquo.scope+xml; version=2.2" href="http://localhost:80/api/admin/scopes/1"/>
	<link href="http://localhost/api/config/privileges/6" rel="privilege6"/>
        <blocked>false</blocked>
        <id>4</id>
        <name>qqqqqqqqq</name>
	</role>' | xmlindent -nbe -f
