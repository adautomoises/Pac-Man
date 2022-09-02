import 'dart:math';
import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:pacman/Characters/ghost.dart';
import 'package:pacman/Characters/Sprites/sprites.dart';

class PacMan extends SimplePlayer with ObjectCollision {
  MovementDirection _currentMovementDirection = MovementDirection.none;
  bool moves = true;
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
            eightDirection: false,
          ),
        ) {
    setupCollision(CollisionConfig(collisions: [
      CollisionArea.rectangle(size: Vector2(22, 22), align: Vector2(6, 6))
    ]));
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
      _currentMovementDirection = MovementDirection.none;
    });
    super.die();
  }

  void _movePlayer() {
    if (!moves) return;
    switch (_currentMovementDirection) {
      case MovementDirection.down:
        moveDown(speed);
        break;

      case MovementDirection.up:
        moveUp(speed);
        break;

      case MovementDirection.left:
        moveLeft(speed);
        break;

      case MovementDirection.right:
        moveRight(speed);
        break;

      default:
        idle();
        break;
    }
  }

  @override
  bool hasGesture() => true;

  @override
  bool handlerPointerMove(PointerMoveEvent event) {
    double quarterOfPi = pi / 4;
    double piMinusQuarter = pi - quarterOfPi;
    double angle = event.localDelta.direction;
    if (angle >= -piMinusQuarter && angle <= -quarterOfPi) {
      _currentMovementDirection = MovementDirection.up;
    } else if (angle >= quarterOfPi && angle <= piMinusQuarter) {
      _currentMovementDirection = MovementDirection.down;
    } else if ((angle >= piMinusQuarter && angle <= pi) ||
        (angle <= -piMinusQuarter && angle >= -pi)) {
      _currentMovementDirection = MovementDirection.left;
    } else if (angle >= -quarterOfPi && angle <= quarterOfPi) {
      _currentMovementDirection = MovementDirection.right;
    }

    return super.handlerPointerMove(event);
  }

  @override
  void update(double dt) {
    _movePlayer();
    super.update(dt);
  }
}

enum MovementDirection { none, idle, left, right, up, down }
