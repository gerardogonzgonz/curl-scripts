#!/bin/bash

curl --verbose -X POST 'http://10.60.21.187/api/config/licenses' \
      -H "Accept: application/vnd.abiquo.license+xml;version=2.0" \
      -H "Content-Type: application/vnd.abiquo.license+xml;version=2.0" \
      -u admin:xabiquo \
      -d '<license>
<id>0</id>
<enabledip>10.60.21.187</enabledip>
<numcores>100</numcores>
<expiration>1800-12-12</expiration>
  <code>e2odnRbWdcUnVK/3qsyY1dXgBWaRy5U7RgIbCEwlU84uAsU+41P5FKyLy/aE61f3+XhvYG1E95zGHOP/qXf/LTBQpSQN2IbjdNUOGkLNwIrnGafXdRPyEmGSBie19sjU4O4Cf5wJfyS7Ah6DJ6trcRr98AR8f4igSWmlS2VKsbkihiIGDOo8N2VSg3lYpNiSWcS78fHCnV+I13HPotEKTnu9sO47z9lBq9mvSem5oo8BwfwrQ5k3hylMNUF8QwpovVyJ3qcH7fJt+OqZ6iEV9zCYCEndErYZcdBlTieJ5+Ep3I83OMojwb2Py2wBbH99p+T74E7TvFEOQc6oWhnv6A==</code>
</license>' | xmlindent -nbe -f

