#!/bin/bash

curl --verbose -X POST 'http://10.60.11.186/api/admin/enterprises/1/appslib/templateDefinitionLists' \
       -H "Content-type: application/vnd.abiquo.templatedefinitionlist+xml;version=2.0" \
       -H "Accept: application/vnd.abiquo.templatedefinitionlist+xml;version=2.0" \
       -u admin:xabiquo \
       -d \
'<templateDefinitionList>
<name>templatelist_test</name>
    <templateDefinitions>    
        <templateDefinition>
            <link href="http://10.60.11.186:80/api/config/categories/1" rel="category" title="Others"/>
            <link href="http://10.60.11.186:80/api/config/icons/24" rel="icon" title="http://icons.abiquo.com/sugarcrm.png"/>
            <url>http://rs.bcn.abiquo.com/test1/description1.ovf</url>
            <diskFormatType>VMDK_STREAM_OPTIMIZED</diskFormatType>
            <diskFileSize>556</diskFileSize>
        </templateDefinition>
        <templateDefinition>
            <link href="http://10.60.11.186:80/api/config/categories/1" rel="category" title="Others"/>
            <link href="http://10.60.11.186:80/api/config/icons/24" rel="icon" title="http://icons.abiquo.com/sugarcrm.png"/>
            <url>http://rs.bcn.abiquo.com/test2/description2.ovf</url>
            <diskFormatType>VMDK_STREAM_OPTIMIZED</diskFormatType>
            <diskFileSize>556</diskFileSize>
        </templateDefinition>
    </templateDefinitions>
</templateDefinitionList>' | xmlindent -nbe -f
