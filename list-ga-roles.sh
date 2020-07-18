#!/usr/bin/env bash

source ./lib/helper.sh

cat roles/* | jq -r 'select(.stage!=null and .stage=="GA") | "\(.name)"'
