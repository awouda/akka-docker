#!/bin/bash

SCRIPT_LOCATION=$0

APP_HOME=`dirname "$SCRIPT_LOCATION"`/..

cd $APP_HOME/bin

./server-build-and-run.sh

./client-build-and-run.sh

