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

class RedGhostSprites {
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'red_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'red_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        'red_ghost_left_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runUp => SpriteAnimation.load(
        'red_ghost_up_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runDown => SpriteAnimation.load(
        'red_ghost_down_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
}

class BlueGhostSprites {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'blue_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        'blue_ghost_left_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'blue_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runUp => SpriteAnimation.load(
        'blue_ghost_up_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runDown => SpriteAnimation.load(
        'blue_ghost_down_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
}

class OrangeGhostSprites {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'orange_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        'orange_ghost_left_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'orange_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runUp => SpriteAnimation.load(
        'orange_ghost_up_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runDown => SpriteAnimation.load(
        'orange_ghost_down_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
}

class PinkGhostSprites {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'pink_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        'pink_ghost_left_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'pink_ghost_right_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runUp => SpriteAnimation.load(
        'pink_ghost_up_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
  static Future<SpriteAnimation> get runDown => SpriteAnimation.load(
        'pink_ghost_down_strip2.png',
        SpriteAnimationData.sequenced(
            amount: 2,
            stepTime: 0.15,
            textureSize: Vector2(21, 21),
            texturePosition: Vector2(0, 0)),
      );
}
