#!/usr/bin/env sh

mc alias set minio http://minio:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD

setup_bucket() {
  mc mb minio/$1 --ignore-existing
}

setup_bucket $MINIO_PRIVATE_BUCKET
setup_bucket $MINIO_PUBLIC_BUCKET

mc policy set download minio/$MINIO_PUBLIC_BUCKET
