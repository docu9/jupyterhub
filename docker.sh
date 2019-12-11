#!/bin/bash
# docker rm `docker ps -al -q`
docker run -p 8000:8000 \
    --name jupyterhub \
    -v ${PWD}/config:/srv/jupyterhub \
    jupyterhub:latest \
    jupyterhub

docker rm `docker ps -al -q`