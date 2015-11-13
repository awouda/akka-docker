#!/bin/bash

sbt "project akkaCalcClient" assembly
cp akka-calc-client/target/scala-2.11/akka-calc-client-assembly-1.0.jar dockerClient/
cd dockerClient
java -Dconfig.file=dock.conf -jar akka-calc-client-assembly-1.0.jar
