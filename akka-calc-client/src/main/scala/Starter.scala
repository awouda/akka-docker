import akka.actor.{Props, ActorSystem}

object Starter extends App {

  val system = ActorSystem("calcClient")

  system.actorOf(Props(new CalcClientActor))


}
