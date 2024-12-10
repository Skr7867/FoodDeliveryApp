import 'package:flutter/material.dart';

class ResponsiveFontSize {
  /// Base screen width (reference resolution for scaling font sizes)
  static const double baseWidth = 1920.0;

  /// Base screen height (optional, if you want to scale based on height)
  static const double baseHeight = 1080.0;

  /// Calculates responsive font size based on screen width.
  static double getResponsiveFontSize(BuildContext context, double fontSize) {
    double screenWidth = MediaQuery.of(context).size.width;
    return fontSize * (screenWidth / baseWidth);
  }

  /// Calculates responsive font size based on screen height (optional).
  static double getResponsiveFontSizeByHeight(
      BuildContext context, double fontSize) {
    double screenHeight = MediaQuery.of(context).size.height;
    return fontSize * (screenHeight / baseHeight);
  }
}
