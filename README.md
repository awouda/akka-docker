# AKKA-DOCKER
a trial project for running an Akka app in a docker container accessible by an AKKA app on the host and/or another docker instance.
Currently only the akkaCalc app running in a docker is provided.

# Usage

* clone the project
* run server-build-and-run.sh
* run client-build-and-run.sh 


# Some more information

The server has to run first. In the start.sh script, the docker ip ad is fetched and provided to the akka configuration: dockerServer/dock.conf
When the server has started, the client script resolves the docker ip and puts that in the client akka config, located in dockerClient/dock.conf.

todo: put client in docker as well.

# OSX

This was developed on Linux. I was pointed out that on OSX it does not work. It seems that on OSX one cannot ping a container using the containers IP. Looking into a way to overcome this issue.