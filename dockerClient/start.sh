#!/bin/bash

REMOTE_IP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)

java -Dconfig.file=dock.conf -DdockerIp=$REMOTE_IP -jar akka-calc-assembly-1.0.jar 

