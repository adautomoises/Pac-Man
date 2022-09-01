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
}
