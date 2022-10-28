echo -n "Enter storage path:"                   # 参数-n的作用是不换行，echo默认换行
read  storage_path
echo -n "Enter DB name:"
read db_name


if [ "" = "$storage_path" ] ;then
    echo "please enter storage path~"
else
  if [ ""="$db_name" ] ;then
    echo "please enter db name~"
  else
    echo "${storage_path}"
    echo "${db_name}"

    /br restore db \
    --pd "pd0:2379" \
    --db ${db_name} \
    --storage "s3://${storage_path}/?access-key=minio&secret-access-key=minio123" \
    --s3.region "us-west-2" \
    --send-credentials-to-tikv=true \
    --ratelimit 128 \
    --s3.endpoint "http://minio:9000" \
    --s3.provider "aws" \
    --log-file restore_db.log
  fi
fi
