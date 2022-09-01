import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/pacman.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ), // required
      map: WorldMapByTiled('map/map.json', forceTileSize: Vector2(32, 32)),
      // showCollisionArea: true,
      player: PacMan(Vector2(32, 5)),
    );
  }
}
