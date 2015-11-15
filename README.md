# AKKA-DOCKER
a trail project for running an Akka app in a docker container accessible by an AKKA app on the host and/or another docker instance.
Currently only the akkaCalc app running in a docker is provided.

# Usage

Clone the project.

* run server-build-and-run.sh
* examine which ip in docker container was printed
* use above ip in dockerClient/dock.conf (host variable)
* run client-build-and-run.sh 