#!/bin/bash

curl --verbose 'http://10.60.21.187/api/admin/rolesldap/4' \
      -X "PUT" \
      -u admin:xabiquo \
      -H "Content-type:application/vnd.abiquo.roleldap+xml; version=2.0" \
      -H "Accept: application/vnd.abiquo.roleldap+xml; version=2.0" \
      -d '<roleLdap>
    	<link rel="edit" type="application/vnd.abiquo.roleldap+xml" href="http://10.60.21.187:80/api/admin/rolesldap/4"/>
    	<link rel="role" type="application/vnd.abiquo.role+xml" href="http://10.60.21.187:80/api/admin/roles/7"/>
    	<id>4</id>
    	<roleLdap>new_value</roleLdap>
	</roleLdap>' | xmlindent -nbe -f
