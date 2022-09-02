import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pacman/Characters/ghost.dart';
import 'package:pacman/Characters/pacman.dart';

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
      gameController: GameController(),
      map: WorldMapByTiled('map/map.json',
          forceTileSize: Vector2(tileSize, tileSize)),
      // showCollisionArea: true,
      player: PacMan(Vector2(tileSize * 17, tileSize * 7)),
      components: [
        Ghost(Vector2(tileSize * 17, tileSize * 3)),
      ],
      cameraConfig: CameraConfig(moveOnlyMapArea: true),
    );
  }
}
