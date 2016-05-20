#!/bin/bash


IMAGE_FOLDER=$1
cd $IMAGE_FOLDER

IMAGE=${2}

echo Building image : $IMAGE 
docker build -t $IMAGE .
