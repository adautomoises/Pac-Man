import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';
import 'ghost.dart';

class OrangeGhost extends Ghost {
  OrangeGhost(Vector2 position)
      : super(
          pos: position,
          idleRight: OrangeGhostSprites.idleRight,
          runRight: OrangeGhostSprites.runRight,
          runUp: OrangeGhostSprites.runUp,
          runDown: OrangeGhostSprites.runDown,
          runLeft: OrangeGhostSprites.runLeft,
        );
}
