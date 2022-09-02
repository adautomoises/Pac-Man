import 'package:bonfire/bonfire.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';
import 'ghost.dart';

class BlueGhost extends Ghost {
  BlueGhost(Vector2 position)
      : super(
          pos: position,
          idleRight: BlueGhostSprites.idleRight,
          runRight: BlueGhostSprites.runRight,
          runUp: BlueGhostSprites.runUp,
          runDown: BlueGhostSprites.runDown,
          runLeft: BlueGhostSprites.runLeft,
        );
}
