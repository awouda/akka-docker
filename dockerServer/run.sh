#!/bin/bash

docker rm calc
docker  run  --name calc -ti -p 9100:9100 wojo:calc 
