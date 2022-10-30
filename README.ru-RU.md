[![Language](https://img.shields.io/badge/Language-English-blue.svg)](README.md)
[![List Keep API](https://img.shields.io/badge/List%20Keep-Back-informational.svg)](https://github.com/vanbv/list-keep)
[![List Keep Front](https://img.shields.io/badge/List%20Keep-Front-informational.svg)](https://github.com/vanbv/list-keep-front)
[![Helm](https://img.shields.io/badge/-Helm-0F1689?logo=Helm&labelColor=0F1689)](https://helm.sh/)
[![Artifact Hub bitnami](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/bitnami)](https://artifacthub.io/packages/search?repo=bitnami)
[![Keycloak](https://img.shields.io/badge/-Keycloak-blue)](https://www.keycloak.org/)
[![Keycloak](https://img.shields.io/badge/-PostgreSQL-316192?logo=postgresql&logoColor=white)](https://www.postgresql.org/)

# List Keep Helm Chart
Helm chart для деплоя проекта List Keep.

## Быстрый старт
Для установки чарта можно выполнить скрипт `helm-install.sh`. Переменные окружения в данном скрипте нужно заменить на
свои значения.
* `CLUSTER_URL` - часть url-адреса кластера, используется в роутах
* `KEYCLOAK_POSTGRESQL_ADMIN_PASSWORD` - пароль пользователя-админа PostgreSQL
* `KEYCLOAK_ADMIN_PASSWORD` - пароль пользователя-админа Keycloak
* `KEYCLOAK_POSTGRESQL_PASSWORD` - пароль кастомного пользователя PostgreSQL

Для инициализации `keycloak` можно выполнить скрипт
[init.sh](https://github.com/vanbv/list-keep/blob/main/keycloak/init.sh) из проекта
[List Keep](https://github.com/vanbv/list-keep), заменив значения переменных окружения на свои.

## Серверная часть
[List Keep](https://github.com/vanbv/list-keep)

## Клиентская часть
[List Keep Front](https://github.com/vanbv/list-keep-front)
