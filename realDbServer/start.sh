#!/bin/bash

IP=0.0.0.0
PORT=3306
PASS=GoatStuff#123

if [ "`docker inspect -f {{.State.Running}} mysql`"=="true" ]; then
    docker stop mysql && docker rm mysql
fi;

docker run --name=mysql -d -e MYSQL_ROOT_HOST=% -e MYSQL_ROOT_PASSWORD=$PASS -p $IP:$PORT:3306 \
    -v ${PWD}/setup:/docker-entrypoint-initdb.d mysql/mysql-server:5.6
until [ "`docker inspect -f {{.State.Running}} mysql`"=="true" ]; do
    echo "waiting for container to become healthy"
    sleep 0.5;
done;

echo "DOne!"