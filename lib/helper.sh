#!/usr/bin/env bash

mkdir -p roles
if [ ! "$(ls -A ./roles)" ]; then
 echo "Error: The 'roles' directory appears to be empty.  Run './fetch-all-roles.sh'"
 exit 1
fi
