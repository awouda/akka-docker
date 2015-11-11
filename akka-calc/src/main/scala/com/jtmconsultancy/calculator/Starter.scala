package com.jtmconsultancy.calculator

import akka.actor.{Props, ActorSystem}
import com.jtmconsultancy.calculator.actor.CalculatorActor

object Starter extends App {

  val system =  ActorSystem("akkaCalculator")

  system.actorOf(Props(new CalculatorActor),name = "calculator")

  println("Akka calculator started...")

}
