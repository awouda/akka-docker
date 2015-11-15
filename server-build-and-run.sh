#!/bin/bash

sbt "project akkaCalc" assembly
cp akka-calc/target/scala-2.11/akka-calc-assembly-1.0.jar dockerServer/
docker -f rmi wojo:calc
docker build -t wojo:calc dockerServer/


dockerServer/run.sh

