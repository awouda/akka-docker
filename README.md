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

This was developed on Linux. I was pointed out that on OSX it does not work. It seems that on OSX one cannot ping a container using the containers IP. Meaning the client cannot access the remote akka system running in the docker container by this IP. Currently this is not an issue that will be fixed.