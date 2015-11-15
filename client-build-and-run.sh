#!/bin/bash

sbt "project akkaCalcClient" assembly
cp akka-calc-client/target/scala-2.11/akka-calc-client-assembly-1.0.jar dockerClient/
cd dockerClient

docker-ip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

DOCKER_IP=`docker-ip calc`

java -Dconfig.file=dock.conf -DdockerIp=$DOCKER_IP -jar akka-calc-client-assembly-1.0.jar
