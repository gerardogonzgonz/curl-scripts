#!/bin/bash

curl --verbose -X POST 'http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitionLists' \
       -H "Content-type: application/vnd.abiquo.templatedefinitionlist+xml;version=2.0" \
       -H "Accept: application/vnd.abiquo.templatedefinitionlist+xml;version=2.0" \
       -u admin:xabiquo \
       -d \
'<templateDefinitionList>
<id>0</id>
<name/>
<templateDefinitions>
<totalSize>1</totalSize>
<templateDefinition>
<description/>
<diskFileSize>0</diskFileSize>
<diskFormatType/>
<ethernetDriverType>PCNet32</ethernetDriverType>
<iconUrl/>
<id>0</id>
<name/>
<productName/>
<productUrl/>
<productVendor/>
<productVersion/>
<url/>
</templateDefinition>
</templateDefinitions>
<url/>
</templateDefinitionList>' | xmlindent -nbe -f
