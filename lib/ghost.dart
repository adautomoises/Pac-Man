import 'package:bonfire/bonfire.dart';
import 'package:pacman/sprites.dart';

const double tileSize = 32;

class Ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  Ghost(Vector2 position)
      : super(
          position: position,
          size: Vector2(32, 32),
          animation: SimpleDirectionAnimation(
            idleRight: GhostSprites.ghostIdleRight,
            runRight: GhostSprites.ghostRunRight,
            runUp: GhostSprites.ghostUp,
            runDown: GhostSprites.ghostDown,
            runLeft: GhostSprites.ghostLeft,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(22, 22), align: Vector2(6, 6))
    ]));
  }
  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(damage: 100, size: Vector2(0, 0));
      },
      radiusVision: tileSize * 8,
    );
    runRandomMovement(
      dt,
      speed: 100,
      maxDistance: 100,
    );
    super.update(dt);
  }
}
