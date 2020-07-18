#!/usr/bin/env bash

source ./lib/helper.sh

cat roles/* | jq -r '.includedPermissions[]' | sort -u
