#!/bin/bash

#docker run --name calc -ti -p 9000:9001 wojo:calc java -Dconfig.file=dock.conf -jar akka-calc-assembly-1.0.jar

docker  run  --name calc -ti -p 9100:9100 wojo:calc /bin/bash
