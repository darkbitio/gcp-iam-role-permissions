#!/usr/bin/env bash

if [ "$#" -ne 1 ]
then
  echo "Error: Must specify the permission to search for"
  echo ""
  echo "e.g: $0 resourcemanager.projects.get"
  echo ""
  exit 1
fi

source ./lib/helper.sh

cat roles/* | jq -r --arg PERM "$1" 'select(.includedPermissions!=null and (.includedPermissions[] | contains($PERM))) | "\(.name)"'
