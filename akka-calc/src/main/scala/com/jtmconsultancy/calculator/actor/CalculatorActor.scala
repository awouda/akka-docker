package com.jtmconsultancy.calculator.actor

import akka.actor.{ActorLogging, Actor}
import com.jtmconsultancy.messages._


class CalculatorActor extends Actor with ActorLogging {

  log.info("Calculator started")

  override def receive = {
    case Start => log.info("Start message received ")
    case Stop => log.info("stop message received")
    case Add(i,j) =>  log.info("got an Add"); sender ! CalcResult("Add",i+j)
    case Multiply(i,j) => log.info("got a multiply"); sender ! CalcResult("Multiply",i*j)
  }

}
