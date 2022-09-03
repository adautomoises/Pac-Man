import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacman/Characters/pacman.dart';
import 'package:pacman/Objects/power.dart';
import 'package:pacman/Objects/point.dart';

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
    return Center(
        child: Container(
      margin: const EdgeInsets.all(10.0),
      width: 930,
      height: 290,
      child: BonfireWidget(
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
        decorations: <GameDecoration>[
          Power(Vector2(tileSize / 4, tileSize * 1.5)), //CE
          Power(Vector2(tileSize / 4, tileSize * 7.2)), //BE
          Power(Vector2(tileSize * 5.2, tileSize * 3.7)), //CG
          Power(Vector2(tileSize * 27.6, tileSize * 1.5)), //CD
          Power(Vector2(tileSize * 27.6, tileSize * 7.2)), //BD
          Point(Vector2(tileSize * 1, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 2, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 3, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 4, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 5, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 6, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 7, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 8, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 9, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 10, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 11, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 12, tileSize * 0.5)), //C
          Point(Vector2(tileSize * 1.5, tileSize * 2)),
          Point(Vector2(tileSize * 11.5, tileSize * 3)),
          Point(Vector2(tileSize * 11.5, tileSize * 4)),
          Point(Vector2(tileSize * 11.5, tileSize * 5)),
        ],
        // showCollisionArea: true,
        player: PacMan(Vector2(tileSize * 16.8, tileSize * 7)),
        cameraConfig: CameraConfig(moveOnlyMapArea: true),
      ),
    ));
  }
}
