import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;

  static double? screenHeight;
  static double? screenWidth;

  static double? blockSizeHorizontal;
  static double? blockSizeVertical;

  static void init({required BuildContext context}) {
    _mediaQueryData = MediaQuery.of(context);

    screenHeight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;

    blockSizeHorizontal = screenWidth! / 100;
    blockSizeVertical = screenHeight! / 100;
  }
}
