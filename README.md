# AKKA-DOCKER
a trail project for running an Akka app in a docker container accessible by an AKKA app on the host and/or another docker instance.
Currently only the akkaCalc app running in a docker is provided.

# Usage

Clone the project and fire up sbt.
Navigate to project akkaCalc and run task 'assembly'
Navigate to project akkaCalcClient and run task 'assembly'

exit sbt and copy the generated jar file for akkaCalc to the dockerServer folder. Do the same for the client, but copy it to the dockerClient.

//todo add build image command, so the run.sh always works