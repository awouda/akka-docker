package com.jtmconsultancy

package object messages {

  case object Start
  case object Stop
  case object Tick

  trait CalcOperation
  case class Add(operand1:Int,operand2:Int) extends CalcOperation
  case class Multiply(operand1:Int,operand2:Int) extends CalcOperation

  case class CalcResult(operation:String,result:Int)


}
