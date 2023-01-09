#!/usr/bin/env bash

if [ "$#" -ne 2 ]
then
  cat << EOF
Error: Must specify the 2 roles to diff

e.g: $0 artifactregistry.writer artifactregistry.repoAdmin
EOF
  exit 1
fi

source ./lib/helper.sh

FROM=$(mktemp)
TO=$(mktemp)

./list-permissions-of-role.sh "$1" | sort -u > "$FROM"
./list-permissions-of-role.sh "$2" | sort -u > "$TO"

# allow customized output styling. see README
${DIFF:-diff} "$FROM" "$TO"
