# `mysqldump-s3`

A docker image to backup MySQL databases to S3 using `mysqldump` and `awscli`.

## Usage

```shell
docker run \
  -e DATABASE_HOST= \
  -e DATABASE_USER= \
  -e DATABASE_PASSWORD= \
  -e DATABASE_NAME= \
  -e AWS_ACCESS_KEY_ID= \
  -e AWS_SECRET_ACCESS_KEY= \
  -e AWS_ENDPOINT= \
  -e AWS_S3_BUCKET= \
  -e AWS_S3_BUCKET_DIR= \
  ghcr.io/hobroker/mysqldump-s3:latest

```