#!/bin/bash

# writing aws docker creds to desired path
echo "Writing Docker creds to $1"
cat << EOF > "$1"
{
  "auths": {
  	"$REGISTRY": {
  		"auth": "$AUTH",
  		"email": ""
  	}
  }
}
EOF

