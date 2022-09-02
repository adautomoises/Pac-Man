import 'package:bonfire/bonfire.dart';

class PacManSprites {
  static Future<SpriteAnimation> get pacmanRunRight => SpriteAnimation.load(
        'pacman_right_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get pacmanIdleRight => SpriteAnimation.load(
        'pacman_right_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get pacmanLeft => SpriteAnimation.load(
        'pacman_left_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get pacmanRight => SpriteAnimation.load(
        'pacman_right_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get pacmanUp => SpriteAnimation.load(
        'pacman_up_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get pacmanDown => SpriteAnimation.load(
        'pacman_down_strip3.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.15,
            textureSize: Vector2(20, 20),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get pacmanDying => SpriteAnimation.load(
        'pacman_dying_strip11.png',
        SpriteAnimationData.sequenced(
            amount: 11,
            stepTime: 0.15,
            textureSize: Vector2(22, 16),
            texturePosition: Vector2(0, 0)),
      );
}

class GhostSprites {
  static Future<SpriteAnimation> get ghostRunRight => SpriteAnimation.load(
        'red_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get ghostIdleRight => SpriteAnimation.load(
        'red_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get ghostLeft => SpriteAnimation.load(
        'red_ghost_left_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get ghostRight => SpriteAnimation.load(
        'red_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get ghostUp => SpriteAnimation.load(
        'red_ghost_up_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get ghostDown => SpriteAnimation.load(
        'red_ghost_down_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
}
