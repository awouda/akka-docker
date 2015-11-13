#!/bin/bash
docker rmi wojo:calc
docker build -t wojo:calc dockerServer/

