import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacman/Characters/pacman.dart';

import 'Characters/ghosts/blue_ghost.dart';
import 'Characters/ghosts/orange_ghost.dart';
import 'Characters/ghosts/pink_ghost.dart';
import 'Characters/ghosts/red_ghost.dart';

const double tileSize = 32;
bool moves = PacMan.moves;
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
        enable: moves,
        acceptedKeys: [
          LogicalKeyboardKey.space,
        ],
        keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows,
      )),
      gameController: GameController(),
      map: WorldMapByTiled(
        'map/map.json',
        forceTileSize: Vector2(tileSize, tileSize),
      ),
      components: [
        BlueGhost(Vector2(tileSize * 17.5, tileSize * 3)),
        OrangeGhost(Vector2(tileSize * 17.5, tileSize * 3)),
        PinkGhost(Vector2(tileSize * 17, tileSize * 3)),
        RedGhost(Vector2(tileSize * 17, tileSize * 3)),
      ],
      // showCollisionArea: true,
      player: PacMan(Vector2(tileSize * 16.8, tileSize * 7)),
      cameraConfig: CameraConfig(moveOnlyMapArea: true),
    );
  }
}
