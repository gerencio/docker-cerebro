#!/bin/bash

set -e

secret=${APP_SECRET:-00oUafDtILqSFOhcpb8Zye4aU8Z7kGA9}
url=${APP_URL}
name=${APP_NAME}
username=${APP_USERNAME}
password=${APP_PASSWORD}

sed -i "s/%SECRET%/$secret/g" application.conf
sed -i "s,%URL%,$url,g" application.conf
sed -i "s/%NAME%/$name/g" application.conf
sed -i "s/%USERNAME%/$username/g" application.conf
sed -i "s/%PASSWORD%/$password/g" application.conf
cp application.conf /opt/cerebro/conf/application.conf


exec "$@"