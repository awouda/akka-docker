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

DOCKER_IP=`docker-ip calc`

java -Dconfig.file=application.conf -DdockerIp=$DOCKER_IP -jar akka-calc-client-assembly-1.0.jar
