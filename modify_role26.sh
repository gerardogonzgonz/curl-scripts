#!/bin/bash

curl --verbose 'http://10.60.1.61/api/admin/roles/53' \
      -X "PUT" \
      -u admin:xabiquo \
      -H "Accept: application/vnd.abiquo.role+xml;version=2.6" \
      -H "Content-Type: application/vnd.abiquo.role+xml;version=2.6" \
      -d '<role>
    	<link rel="edit" type="application/vnd.abiquo.role+xml" href="http://10.60.1.61/api/admin/roles/53"/>
        <link rel="privileges" type="application/vnd.abiquo.privileges+xml" href="http://10.60.1.61/api/admin/roles/53/action/privileges"/>
        <link rel="scope" type="application/vnd.abiquo.scope+xml; version=2.6" href="http://10.60.1.61/api/admin/scopes/1"/>
	<!-- <link href="http://10.60.11.20/api/config/privileges/8" rel="privilege"/> -->
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/2"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/14"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/22"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/24"/>
        <link rel="privilege" type="application/vnd.abiquo.privilege+xml" href="http://10.60.11.20:80/api/config/privileges/25"/>
        <blocked>false</blocked>
        <id>53</id>
        <name>role5500</name>
	</role>' | xmlindent -nbe -f
