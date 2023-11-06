#!/bin/bash
docker rm -f lovetok
docker build -t lovetok . && \
docker run --name=lovetok --rm -p9000:80 -d -it lovetok
docker logs -f lovetok &> /var/log/access.log