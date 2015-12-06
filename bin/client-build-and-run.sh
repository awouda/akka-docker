#!/bin/bash

SCRIPT_LOCATION=$0

APP_HOME=`dirname "$SCRIPT_LOCATION"`/..

cd $APP_HOME
sbt "project akkaCalcClient" assembly
cp akka-calc-client/target/scala-2.11/akka-calc-client-assembly-1.0.jar calculatorClient/
cd calculatorClient

docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}


osx-docker-host-ip() {
  docker-machine ip dev
}

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    DOCKER_IP=`docker-ip calc`
elif [[ "$OSTYPE" == "darwin"* ]]; then
     DOCKER_IP=`osx-docker-host-ip`
fi


java -Dconfig.file=application.conf -DdockerIp=$DOCKER_IP -jar akka-calc-client-assembly-1.0.jar
