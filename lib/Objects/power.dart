import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';

import '../Characters/pacman.dart';

const double tileSize = 32;

class Power extends GameDecoration with ObjectCollision {
  Power(Vector2 position)
      : super.withAnimation(
          animation: PowerSprites.power,
          size: Vector2(tileSize * 2, tileSize * 2),
          position: position,
        ) {
    setupCollision(CollisionConfig(
        collisions: [CollisionArea.circle(radius: 8, align: Vector2(9, 9))]));
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is PacMan) {
      removeFromParent();
    }
    return super.onCollision(component, active);
  }
}
