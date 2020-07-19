#!/usr/bin/env bash

if [ "$#" -ne 1 ]
then
  echo "Error: Must specify the role to search for"
  echo ""
  echo "e.g: $0 container.admin"
  echo ""
  exit 1
fi

source ./lib/helper.sh

cat roles/* | jq -r --arg ROLE "roles/$1" 'select(.name==$ROLE and .includedPermissions!=null and .includedPermissions!=[]) | .includedPermissions[] | "\(.)"'
