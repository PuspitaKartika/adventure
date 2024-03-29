import 'dart:async';
import 'dart:ui';

import 'package:adventure/level/level.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xff211F30);
  late final CameraComponent cam;
  @override
  final world = Level();

  @override
  FutureOr<void> onLoad() async {
    //load all images into cache
    await images.loadAllImages();
    cam = CameraComponent.withFixedResolution(
        world: world, width: 640, height: 360);
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}
