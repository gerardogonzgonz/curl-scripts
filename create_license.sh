#!/bin/bash

license={$1}

curl --verbose -X POST 'http://10.60.21.187/api/config/licenses' \
      -H "Accept: application/vnd.abiquo.license+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.license+xml;version=2.0" \
      -u admin:xabiquo \
      -d '<license>
<id>0</id>
<enabledip>10.60.21.187</enabledip>
<numcores>100</numcores>
<expiration>1800-12-12</expiration>
  <code>'$1'</code>
</license>' | xmlindent -nbe -f

