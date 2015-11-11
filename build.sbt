name := "akka-docker"
 
version := "1.0"

scalaVersion := "2.11.7"


lazy val akkaCalcMessages =  project.in(file("akka-calc-messages"))

lazy val akkaCalc = project.in(file("akka-calc")).dependsOn(akkaCalcMessages)

lazy val akkaCalcClient = project.in(file("akka-calc-client")).dependsOn(akkaCalcMessages)

