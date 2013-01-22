#!/bin/bash

curl --verbose 'http://10.60.1.242/api/admin/scopes/2' \
      -X "PUT" \
      -H "Accept:application/vnd.abiquo.scope+xml; version=2.0;" \
      -H "Content-type:application/vnd.abiquo.scope+xml; version=2.0;" \
      -u admin:xabiquo \
      -d '<scope>
        <automaticAddDatacenter>false</automaticAddDatacenter>
        <automaticAddEnterprise>false</automaticAddEnterprise>
        <id>2</id>
        <name>newScope</name>
<scopeEntities> 
<idResource>4</idResource><type>ENTERPRISE</type> 
</scopeEntities> 
<scopeEntities> 
<idResource>4</idResource><type>ENTERPRISE</type> 
</scopeEntities> 
<scopeEntities> 
<idResource>4</idResource><type>ENTERPRISE</type> 
</scopeEntities> 
<scopeEntities> 
<idResource>2</idResource><type>ENTERPRISE</type> 
</scopeEntities>
	</scope>' | xmlindent -nbe -f
