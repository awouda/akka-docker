#!/bin/bash

SCRIPT_LOCATION=$0

APP_HOME=`dirname "$SCRIPT_LOCATION"`/..

cd $APP_HOME
sbt "project akkaCalc" assembly
cp akka-calc/target/scala-2.11/akka-calc-assembly-1.0.jar dockerServer/



osx-docker-host-ip() {
  docker-machine ip dev
}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    SETHOST=""
elif [[ "$OSTYPE" == "darwin"* ]]; then
     SETHOST="hostname="$(osx-docker-host-ip)
fi

awk -v sethost="$SETHOST" '{ if (NR == 11) print sethost; else print $0}' dockerServer/dock-template.conf > dockerServer/dock.conf

docker -f rmi wojo:calc
docker build -t wojo:calc dockerServer/

dockerServer/run.sh

