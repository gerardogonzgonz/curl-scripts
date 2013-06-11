#!/bin/bash

curl --verbose 'http://10.60.11.20/api/admin/roles/36' \
      -X "PUT" \
      -u admin:xabiquo \
      -H "Accept: application/vnd.abiquo.role+xml;version=2.4" \
      -H "Content-Type: application/vnd.abiquo.role+xml;version=2.4" \
      -d '<role>
    	<link rel="edit" type="application/vnd.abiquo.role+xml" href="http://10.60.11.20/api/admin/roles/36"/>
        <link rel="privileges" type="application/vnd.abiquo.privileges+xml" href="http://10.60.11.20/api/admin/roles/36/action/privileges"/>
        <link rel="scope" type="application/vnd.abiquo.scope+xml; version=2.4" href="http://10.60.11.20/api/admin/scopes/1"/>
	<!-- <link href="http://10.60.11.20/api/config/privileges/8" rel="privilege"/> -->
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/12"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/14"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/17"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/18"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/21"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/22"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/23"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/43"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/57"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/56"/>
        <blocked>false</blocked>
        <id>36</id>
        <name>qqqqqqqqq</name>
	</role>' | xmlindent -nbe -f
