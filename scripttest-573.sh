#!/bin/bash

curl --verbose 'http://10.60.21.33/api/config/licenses' \
       -X "POST" \
	-u admin:xabiquo \
       -H "Content-type:application/xml" \
       -H "Accept:application/xml" \
       -d '<license>
              <code>XgYw1DUqgG5mAr1qt42CMCI77JjH+f1yZ1FRgANf9CV5V+Mt1wgjpeBCmS+uvrnxR/HBeV4tRdADKOjQgdhkDLo9d8iIsiMgl9tVz5O1cqNAEfGlH2dtuQYxpLAFq9DdwfV0mnopvXNbgoklkK8GVk/u9KMzg1UopCN1u6mnm4DOtuuvkWDuWggi8au4SLQiFAXOZncUZXD4TDJqXIE6HbBl5EKPtJCkes4zSNJonPrrKt+T+RoyFF0vfz9cGsbbnpKYGuLbrepz6TxzjPpa9gqYELw6L8IJBYnqFR5oAiOQWzoPwUfmGgpXUW8ltTQiFfHxYfexsi7XArp2oJtbAA==</code>
           </license>' | xmlindent -f
