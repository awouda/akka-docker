package com.jtmconsultancy.calculator.actor

import akka.actor.Actor
import com.jtmconsultancy.messages._


class CalculatorActor extends Actor {

  override def receive = {
    case Start => println("Calculator started")
    case Stop => println("stopping system")
    case Add(i,j) =>       sender ! CalcResult("Add",i+j)
    case Multiply(i,j) => sender ! CalcResult("Multiply",i*j)
  }

}
