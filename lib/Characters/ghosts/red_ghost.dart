import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';
import 'ghost.dart';

class RedGhost extends Ghost {
  RedGhost(Vector2 position)
      : super(
          pos: position,
          idleRight: RedGhostSprites.idleRight,
          runRight: RedGhostSprites.runRight,
          runLeft: RedGhostSprites.runLeft,
          runUp: RedGhostSprites.runUp,
          runDown: RedGhostSprites.runDown,
        );
}
