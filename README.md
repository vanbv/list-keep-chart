[![Language](https://img.shields.io/badge/Language-Russian-blue.svg)](README.ru-RU.md)
[![List Keep API](https://img.shields.io/badge/List%20Keep-Back-informational.svg)](https://github.com/vanbv/list-keep)
[![List Keep Front](https://img.shields.io/badge/List%20Keep-Front-informational.svg)](https://github.com/vanbv/list-keep-front)
[![Helm](https://img.shields.io/badge/-Helm-0F1689?logo=Helm&labelColor=0F1689)](https://helm.sh/)
[![Artifact Hub bitnami](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/bitnami)](https://artifacthub.io/packages/search?repo=bitnami)
[![Keycloak](https://img.shields.io/badge/-Keycloak-blue)](https://www.keycloak.org/)
[![Keycloak](https://img.shields.io/badge/-PostgreSQL-316192?logo=postgresql&logoColor=white)](https://www.postgresql.org/)

# List Keep Helm Chart
Helm chart for List Keep project deploy.

## Getting Started
For install chart you can run script `helm-install.sh`. Environment variables in the script should be replaced with
your values.
* `CLUSTER_URL` - part of the cluster url, used in routes
* `KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD` - PostgreSQL admin user password
* `KEYCLOAK_POSTGRESQL_PASSWORD` - PostgreSQL custom user password

For `keycloak` initialization you can run  [init.sh](https://github.com/vanbv/list-keep/blob/main/keycloak/init.sh)
script from [List Keep](https://github.com/vanbv/list-keep) project replacing the environment variables values with
your one's.

## Backend
[List Keep](https://github.com/vanbv/list-keep)

## Frontend
[List Keep Front](https://github.com/vanbv/list-keep-front)
