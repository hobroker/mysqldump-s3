#!/usr/bin/sh sh

set -e

echo "**** run backup ****"

FILENAME=$(date +"%Y-%m-%d_%H-%M-%S").sql
mysqldump --no-tablespaces -h "${DATABASE_HOST}" -u "${DATABASE_USER}" -p"${DATABASE_PASSWORD}" "${DATABASE_NAME}" | aws s3 cp - s3://"${AWS_S3_BUCKET}"/"${FILENAME}"

echo "**** backup finished ****"
