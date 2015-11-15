#!/bin/bash

docker rm calc
docker  run  --name calc -d -p 9100:9100 wojo:calc 
