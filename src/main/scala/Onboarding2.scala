import math._
import scala.util._

object Player {
    def main(args: Array[String]) {
        while(true) {
            val count = readInt // The number of current enemy ships within range
            val enemies = 1 to count map { _ => readLine split " " }
            val closestEnemy = enemies.minBy(enemy => enemy(1))
            println(closestEnemy(0)) // The name of the most threatening enemy (HotDroid is just one example)
        }
    }
}
