#!/bin/bash

IP=0.0.0.0
PORT=80

if [ "`docker inspect -f {{.State.Running}} vd_rws`"=="true" ]; then
    docker stop vd_rws && docker rm vd_rws
fi;
docker build -t vd_rws .
docker run --name=vd_rws -d -p $IP:$PORT:80 vd_rws

until [ "`docker inspect -f {{.State.Running}} vd_rws`"=="true" ]; do
    echo "waiting for container to become healthy"
    sleep 0.5;
done;

echo "Done!"