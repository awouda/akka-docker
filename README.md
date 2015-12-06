# AKKA-DOCKER
a trial project for running an Akka app in a docker container accessible by an AKKA app on the host.

# Usage

* clone the project
* navigate to project folder akka-docker
* run bin/start.sh

# Some more information

The server has to run first. In the start.sh script, the docker ip ad is fetched and provided to the akka configuration: dockerServer/dock.conf
When the server has started, the client script resolves the docker ip and puts that in the client akka config, located in calculatorClient/application.conf.


# OSX

As on OSX you use docker-machine. (if you're still using boot2docker, you're on your own). In this case we have another indirection, being we need the hostname specified (is the hostname of the VM where the docker is running on). The script assumes that the VM is called 'dev'. Otherwise change it accordingly in server and client build-and-run scripts. Look for 'docker-machine ip dev'. 
