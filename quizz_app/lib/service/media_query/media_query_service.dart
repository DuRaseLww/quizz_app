import 'package:flutter/material.dart';

final class AppMedia {
  double? _height;
  double? _width;

  AppMedia(BuildContext buildContext) {
    _height = MediaQuery.of(buildContext).size.height;
    _width = MediaQuery.of(buildContext).size.width;
  }

  double? get width => _width;

  double? get height => _height;
}

