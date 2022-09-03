import 'package:bonfire/bonfire.dart';
import 'blue_ghost.dart';
import 'orange_ghost.dart';
import 'pink_ghost.dart';
import 'red_ghost.dart';

const double tileSize = 32;

class Ghost extends SimpleEnemy with ObjectCollision, AutomaticRandomMovement {
  bool moves = true;
  final Future<SpriteAnimation> idleRight;
  final Future<SpriteAnimation> runRight;
  final Future<SpriteAnimation> runLeft;
  final Future<SpriteAnimation> runUp;
  final Future<SpriteAnimation> runDown;
  final Vector2 pos;
  Ghost(
      {required this.pos,
      required this.idleRight,
      required this.runRight,
      required this.runLeft,
      required this.runUp,
      required this.runDown})
      : super(
          position: pos,
          size: Vector2(32, 32),
          life: 100,
          speed: 20,
          animation: SimpleDirectionAnimation(
            idleRight: idleRight,
            runRight: runRight,
            runUp: runUp,
            runDown: runDown,
            runLeft: runLeft,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(22, 22), align: Vector2(6, 6))
    ]));
  }
  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is RedGhost ||
        component is BlueGhost ||
        component is PinkGhost ||
        component is OrangeGhost) {
      return active = false;
    }
    return super.onCollision(component, active);
  }

  @override
  void update(double dt) {
    seeAndMoveToPlayer(
      closePlayer: (player) {
        simpleAttackMelee(damage: 100, size: Vector2(0, 0));
      },
      radiusVision: tileSize * 5,
    );
    runRandomMovement(
      dt,
      speed: 20,
      maxDistance: 400,
      minDistance: 50,
      timeKeepStopped: 50,
    );
    super.update(dt);
  }
}
