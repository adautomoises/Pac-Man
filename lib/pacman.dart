import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  PacMan(Vector2 position)
      : super(
          position: position,
          size: Vector2(32, 32), //required
          animation: SimpleDirectionAnimation(
            idleRight: PacManSprites.pacmanIdleRight,
            runRight: PacManSprites.pacmanRunRight,
            runUp: PacManSprites.pacmanUp,
            runDown: PacManSprites.pacmanDown,
            runUpLeft: PacManSprites.pacmanLeft,
            runUpRight: PacManSprites.pacmanRight,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(22, 22), align: Vector2(6, 6))
    ]));
  }
}
