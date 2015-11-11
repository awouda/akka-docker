import akka.actor.Actor
import com.jtmconsultancy.messages.{Multiply, CalcResult, Add, Tick}
import scala.concurrent.duration._
import scala.util.Random

class CalcClientActor extends Actor  {

  import scala.concurrent.ExecutionContext.Implicits.global

  val remoteCalculatorActor =
    context.actorSelection("akka.tcp://akkaCalculator@10.0.0.1:2552/user/calculator")

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
