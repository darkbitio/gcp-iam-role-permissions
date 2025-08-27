# Fetches all Primitive and Predefined GCP IAM Roles

![Fetch all roles](https://github.com/darkbitio/gcp-iam-role-permissions/workflows/Fetch%20all%20roles/badge.svg)

This repository fetches the ~1,170 primitive and predefined IAM Roles in JSON format to the `roles` directory.  A GitHub Action is configured to refresh them daily.  This allows for automatic tracking of changes as they are made by GCP.

A couple of helper scripts are provided to aid in searching/listing of the output.  Note that `jq` should be installed and in your `PATH`:

* `list-all-permissions.sh` grabs the unique list of all permissions contained in all roles fetched
* `list-alpha/beta/ga-roles.sh` lists the roles labeled by GCP as alpha, beta, or GA (generally available)
* `list-roles-with-permissions.sh <api.resource.verb1>[ <api.resource.verbN>]` lists the roles that contain all of the specific permissions passed as one or more arguments. e.g.: `./list-roles-with-permissions.sh autoscaling.sites.writeMetrics logging.logEntries.create`
* `list-roles-with-permission.sh <api.resource.verb>` compatibility alias for the single-permission version of `list-roles-with-permissions.sh`. e.g.: `./list-roles-with-permission.sh container.clusters.get`
* `list-permissions-of-role.sh <role.name>` lists the permissions contained by the role named `<role.name>`.  e.g. `./list-roles-with-permission.sh container.admin` (no need to prepend the `roles/`)
