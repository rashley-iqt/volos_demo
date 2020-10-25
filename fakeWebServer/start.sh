#!/bin/bash

IP=0.0.0.0
PORT=80

if [ "`docker inspect -f {{.State.Running}} vd_fws`"=="true" ]; then
    docker stop vd_fws && docker rm vd_fws
fi;
docker build -t vd_fws .
docker run --name=vd_fws -d -p $IP:$PORT:80 vd_fws

until [ "`docker inspect -f {{.State.Running}} vd_fws`"=="true" ]; do
    echo "waiting for container to become healthy"
    sleep 0.5;
done;

echo "Done!"