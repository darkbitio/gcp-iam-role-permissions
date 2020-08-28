#!/usr/bin/env bash

source ./lib/helper.sh

cat roles/* | jq -c '. + {asset_type: "iam.googleapis.com/ExportedIAMRole"}'
