import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';

import '../Characters/pacman.dart';

const double tileSize = 32;

class Point extends GameDecoration with ObjectCollision {
  Point(Vector2 position)
      : super.withAnimation(
          animation: PointSprites.point,
          size: Vector2(tileSize, tileSize),
          position: position,
        ) {
    setupCollision(CollisionConfig(
        collisions: [CollisionArea.circle(radius: 5, align: Vector2(4, 4))]));
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is PacMan) {
      removeFromParent();
    }
    return super.onCollision(component, active);
  }
}
