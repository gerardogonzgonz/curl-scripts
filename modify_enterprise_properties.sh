#!/bin/bash

curl --verbose -X PUT 'http://10.60.21.187/api/admin/enterprises/0/properties' \
      -H "Accept: application/vnd.abiquo.enterpriseproperties+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.enterpriseproperties+xml;version=2.0" \
      -u admin:xabiquo \
      -d '<enterpriseProperties>
    <link rel="edit" type="application/vnd.abiquo.enterpriseproperties+xml" href="http://10.60.21.187:80/api/admin/enterprises/1/properties"/>
    <link rel="enterprise" type="application/vnd.abiquo.enterprise+xml" href="http://10.60.21.187:80/api/admin/enterprises/1"/>
    <id>1</id>
    <properties>
        <entry>
            <key>ddsa</key>
            <value>%%%</value>
        </entry>
    </properties>
</enterpriseProperties>' | xmlindent -nbe -f
