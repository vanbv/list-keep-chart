#!/bin/bash

export KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD=postgres
export KEYCLOAK_POSTGRESQL_PASSWORD=postgres
export KEYCLOAK_ADMIN_PASSWORD=user
export CLUSTER_URL=-your-namespace.openshiftapps.com

helm install list-keep ./ \
  --set global.postgresql.auth.postgresPassword=$KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD \
  --set global.postgresql.auth.password=$KEYCLOAK_POSTGRESQL_PASSWORD \
  --set keycloak.auth.adminPassword=$KEYCLOAK_ADMIN_PASSWORD \
  --set list-keep.extraEnv[0].name="KEYCLOAK_URL" \
  --set list-keep.extraEnv[0].value="https://list-keep-keycloak$CLUSTER_URL/realms/list-keep" \
  --set list-keep-front.route.host=list-keep-front$CLUSTER_URL \
  --set keycloak.route.host=list-keep-keycloak$CLUSTER_URL
