import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacman/Characters/pacman.dart';

import 'Characters/ghosts/blue_ghost.dart';
import 'Characters/ghosts/orange_ghost.dart';
import 'Characters/ghosts/pink_ghost.dart';
import 'Characters/ghosts/red_ghost.dart';

const double tileSize = 32;
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
          keyboardConfig: KeyboardConfig(
        enable: true,
        acceptedKeys: [
          LogicalKeyboardKey.space,
        ],
        keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
      )),
      gameController: GameController(),
      map: WorldMapByTiled(
        'map/map.json',
        forceTileSize: Vector2(tileSize, tileSize),
        objectsBuilder: {
          'blue_ghost': (properties) => BlueGhost(properties.position),
          'orange_ghost': (properties) => OrangeGhost(properties.position),
          'pink_ghost': (properties) => PinkGhost(properties.position),
          'red_ghost': (properties) => RedGhost(properties.position),
        },
      ),
      // showCollisionArea: true,
      player: PacMan(Vector2(tileSize * 17, tileSize * 7)),

      cameraConfig: CameraConfig(moveOnlyMapArea: true),
    );
  }
}
