import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';
import 'ghost.dart';

class PinkGhost extends Ghost {
  PinkGhost(Vector2 position)
      : super(
          pos: position,
          idleRight: PinkGhostSprites.idleRight,
          runRight: PinkGhostSprites.runRight,
          runUp: PinkGhostSprites.runUp,
          runDown: PinkGhostSprites.runDown,
          runLeft: PinkGhostSprites.runLeft,
        );
}
