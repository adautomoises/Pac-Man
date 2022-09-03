import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';
import 'package:pacman/Characters/ghosts/blue_ghost.dart';
import 'package:pacman/Characters/ghosts/orange_ghost.dart';
import 'package:pacman/Characters/ghosts/pink_ghost.dart';
import 'package:pacman/Characters/ghosts/red_ghost.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  static bool moves = true;
  bool dead = false;
  int lifes = 3;
  PacMan(Vector2 position)
      : super(
          position: position,
          size: Vector2(32, 32),
          life: 100,
          speed: 60,
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
  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is RedGhost ||
        component is BlueGhost ||
        component is PinkGhost ||
        component is OrangeGhost) {
      die();
    }
    return super.onCollision(component, active);
  }

  @override
  void die() async {
    moves = false;
    lifes--;
    enableCollision(false);
    final dyingSprite = await PacManSprites.pacmanDying;
    await animation?.playOnce(dyingSprite, onFinish: () {
      animation?.opacity = 0;
      idle();
      isVisible = false;
      dead = true;
      removeFromParent();
    });
    super.die();
  }
}
