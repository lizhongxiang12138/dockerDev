time=$(date "+%Y%m%d-%H%M%S")
day=$(date "+%Y-%m-%d")
echo "${day}"
echo "${time}"

/br backup full \
--pd "pd0:2379" \
--storage "s3://tidb/all/${day}/${time}/?access-key=minio&secret-access-key=minio123" \
--s3.region "us-west-2" \
--send-credentials-to-tikv=true \
--ratelimit 128 \
--s3.endpoint "http://minio:9000" \
--s3.provider "aws" \
--log-file backuptable.log
