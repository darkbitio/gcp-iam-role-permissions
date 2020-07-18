# Fetches all Primitive and Predefined GCP IAM Roles

![fetch-all-roles](https://github.com/darkbitio/gcp-iam-role-permissions/workflows/fetch-all-roles/badge.svg)

This repository fetches the ~550 primitive and predefined IAM Roles in JSON format to the `roles` directory.  A GitHub Action is configured to refresh them daily.  This allows for automatic tracking of changes as they are made by GCP.

A couple of helper scripts are provided to aid in searching/listing of the output:

* `list-all-permissions.sh` grabs the unique list of all permissions contained in all roles fetched
* `list-alpha/beta/ga-roles.sh` lists the roles labeled by GCP as alpha, beta, or GA (generally available)
* `list-role-with-permission.sh container.clusters.get` lists the roles that contain a specific permission passed by the first argument.
