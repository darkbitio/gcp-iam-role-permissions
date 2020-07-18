#!/usr/bin/env bash

mkdir -p roles
for i in $(gcloud iam roles list --filter='etag:AA==' --format json | jq -r '.[].name'); do
  echo -n "Describing ${i} ..."
  #gcloud iam roles describe "${i}" --format json > "${i}"
  echo "done."
  exit 
done
