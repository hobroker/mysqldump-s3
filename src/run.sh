#!/usr/bin/sh sh

set -e

echo "> configuring awscli"
mkdir -p ~/.aws
cat > ~/.aws/credentials << EOL
[default]
endpoint_url = ${AWS_ENDPOINT}
aws_access_key_id = ${AWS_ACCESS_KEY_ID}
aws_secret_access_key = ${AWS_SECRET_ACCESS_KEY}
EOL

echo "> running backup"
FILENAME=$(date +"%Y-%m-%d_%H-%M-%S").sql
mysqldump --no-tablespaces -h "${DATABASE_HOST}" -u "${DATABASE_USER}" -p"${DATABASE_PASSWORD}" "${DATABASE_NAME}" | aws s3 cp - s3://"${AWS_S3_BUCKET}"/"${FILENAME}"

echo "> backup finished"
