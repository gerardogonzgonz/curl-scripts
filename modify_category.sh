#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/config/categories/' \
      -H "Accept: application/vnd.abiquo.category+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.category+xml;version=2.0" \
      -u admin:xabiquo \
      -d '<category><link rel="edit" type="application/vnd.abiquo.category+xml" href="http://10.60.21.187:80/api/config/categories/10"/><link rel="enterprise" type="application/vnd.abiquo.enterprise+xml" href="http://10.60.21.187:80/api/admin/enterprises/1"/><defaultCategory>false</defaultCategory><erasable>true</erasable><id>10</id><name>sadasda</name> </category>' | xmlindent -nbe -f
