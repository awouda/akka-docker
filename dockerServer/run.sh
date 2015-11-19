#!/bin/bash

docker rm -f calc
docker run  --name calc -d -p 9100:9100 wojo:calc 
