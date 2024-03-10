#!/usr/bin/sh sh

set -e

echo "**** install packages ****"
apk add -U --upgrade --no-cache \
  mysql-client \
  mariadb-connector-c \
  aws-cli

echo "**** cleanup ****"
rm -rf \
  /tmp/* \
  /var/tmp/* \
  /var/cache/apk/*
