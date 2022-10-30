#!/bin/bash

export KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD=postgres
export KEYCLOAK_POSTGRESQL_PASSWORD=postgres
export KEYCLOAK_ADMIN_PASSWORD=user
export CLUSTER_URL=-vanbv-dev.apps.sandbox-m2.ll9k.p1.openshiftapps.com

helm install list-keep ./ --set global.postgresql.auth.postgresPassword=$KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD,global.postgresql.auth.password=$KEYCLOAK_POSTGRESQL_PASSWORD,keycloak.auth.adminPassword=$KEYCLOAK_ADMIN_PASSWORD,list-keep.env[0].name=SPRING_PROFILES_ACTIVE,list-keep.env[0].value=prod,list-keep.env[1].name=KEYCLOAK_URL,list-keep.env[1].value=http://list-keep-keycloak-http$CLUSTER_URL,list-keep-front.route.host=list-keep-front$CLUSTER_URL,keycloak.route.http.host=list-keep-keycloak-http$CLUSTER_URL,keycloak.route.https.host=list-keep-keycloak-https$CLUSTER_URL
