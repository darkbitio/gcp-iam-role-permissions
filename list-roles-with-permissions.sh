#!/usr/bin/env bash

if [ "$#" -lt 1 ]
then
  echo "Error: Must specify at least one permission to search for. Specifying multiple permissions will return roles matching ALL of the supplied permissions."
  echo ""
  echo "e.g: $0 autoscaling.sites.writeMetrics logging.logEntries.create"
  echo ""
  exit 1
fi

source ./lib/helper.sh

arg_json=$(jq --compact-output --null-input '$ARGS.positional' --args -- "${@}")

cat roles/* | jq -r "select(.includedPermissions!=null and (.includedPermissions | contains($arg_json))) | \"\(.name)\""