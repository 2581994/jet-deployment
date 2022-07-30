#!/usr/bin/env sh
set -eux -o pipefail

mc alias set minio $MINIO_SERVER minioadmin minioadmin

setup_bucket() {
  mc mb minio/$1 --ignore-existing
}

setup_bucket minio-public
setup_bucket minio-private

mc policy set download minio/minio-public
