#!/bin/bash


NAME=$1
IMAGE=$2

RUN_ARGS="${3}"

MYHOSTNAME=`hostname`

echo RUN_ARGS :$RUN_ARGS
echo IMAGE: $IMAGE
echo NAME: $NAME

CONTAINER_HOSTNAME="${MYHOSTNAME}-${NAME}"

docker stop $NAME
docker kill $NAME
docker rm $NAME
#-h ${CONTAINER_HOSTNAME} \

docker run \
         --name $NAME \
          ${RUN_ARGS} \
         -d $IMAGE

docker ps -a | grep $NAME

sleep 5

docker logs  $NAME
