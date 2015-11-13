import akka.actor.Actor
import com.jtmconsultancy.messages.{Multiply, CalcResult, Add, Tick}
import com.typesafe.config.{ConfigFactory, Config}
import scala.concurrent.duration._
import scala.util.Random

class CalcClientActor extends Actor  {

  import scala.concurrent.ExecutionContext.Implicits.global

  val config = ConfigFactory.load


  val calcHost = config.getString("calculator.host")
  val calcPort = config.getString("calculator.port")

  val remoteCalculatorActor =
    context.actorSelection(s"akka.tcp://akkaCalculator@${calcHost}:${calcPort}/user/calculator")

  println(remoteCalculatorActor)

  val random = new Random()

  context.system.scheduler.schedule(1 second,1 seconds,self, Tick)


  override def receive = {
    case Tick =>
      random.nextBoolean() match {
        case true => remoteCalculatorActor ! Add(random.nextInt(100),random.nextInt(100))
        case false =>  remoteCalculatorActor ! Multiply(random.nextInt(100),random.nextInt(100))
      }
    case result: CalcResult => println(result)




  }

}
