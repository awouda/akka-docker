#!/bin/bash

SCRIPT_LOCATION=$0

APP_HOME=`dirname "$SCRIPT_LOCATION"`/..

cd $APP_HOME
sbt "project akkaCalc" assembly
cp akka-calc/target/scala-2.11/akka-calc-assembly-1.0.jar dockerServer/
docker -f rmi wojo:calc
docker build -t wojo:calc dockerServer/

dockerServer/run.sh

