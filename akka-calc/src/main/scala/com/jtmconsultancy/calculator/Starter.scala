package com.jtmconsultancy.calculator

import akka.actor.{Props, ActorSystem}
import com.jtmconsultancy.calculator.actor.CalculatorActor
import com.jtmconsultancy.messages.Start

object Starter extends App {

  val system =  ActorSystem("akkaCalculator")

  system.actorOf(Props(new CalculatorActor),name = "calculator") ! Start



}
