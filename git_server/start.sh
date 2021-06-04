#! /bin/bash

docker run -d -p 192.168.100.34:22:22 -v $(pwd)/git-server/keys:/git-server/keys -v $(pwd)/git-server/repos:/git-server/repos jkarlos/git-server-docker

