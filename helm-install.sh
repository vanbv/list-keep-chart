#!/bin/bash

export CLUSTER_URL=-vanbv-1-dev.apps.rm3.7wse.p1.openshiftapps.com

helm install list-keep ./ \
  --set list-keep.extraEnv[0].name="KEYCLOAK_URL" \
  --set list-keep.extraEnv[0].value="https://list-keep-keycloak$CLUSTER_URL/realms/list-keep" \
  --set list-keep-front.route.host=list-keep-front$CLUSTER_URL \
  --set keycloak.route.host=list-keep-keycloak$CLUSTER_URL
