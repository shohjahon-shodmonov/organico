import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData!.size.width;
    _screenHeight = _mediaQueryData!.size.height;
  }

  static double height(double inputHeight) {
    return (inputHeight / 896.0) * SizeConfig._screenHeight!;
  }

  static double width(double inputWidth) {
    return (inputWidth / 414.0) * SizeConfig._screenWidth!;
  }

  static hBox(double size) => SizedBox(height: SizeConfig.height(size));

  static wBox(double size) => SizedBox(width: SizeConfig.width(size));
}
