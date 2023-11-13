import 'package:flutter/material.dart';

class ColorConstants {
  static const Color primaryColor = Color(0xff006781);
  static const Color _gradientColor1 = Color(0xff3B7C99);
  static const Color _gradientColor2 = Color(0xff4395B2);
  static const Color _gradientColor3 = Color(0xff835E8A);

  static const List<Color> gradientColors = [_gradientColor1, _gradientColor2, _gradientColor3];
}

class TypographyConstants {
  static const TextStyle whiteText = TextStyle(
    color: Colors.white,
    fontSize: 16,
    overflow: TextOverflow.ellipsis,
  );
  static const TextStyle errorText = TextStyle(
    color: Colors.red,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class AssetConsants {
  static const String background = 'assets/background.png';
  static const String logo = 'assets/logo.png';
}

class DimensionConstants {
  static BorderRadius standardBorderRadius = BorderRadius.circular(10);
  static BorderRadius buttonBorderRadius = BorderRadius.circular(30);

  static const EdgeInsets horizontalAndVertical30 = EdgeInsets.symmetric(horizontal: 30.0, vertical: 30);

  static const EdgeInsets verticalPadding8 = EdgeInsets.symmetric(vertical: 8.0);
  static const EdgeInsets verticalPadding4 = EdgeInsets.symmetric(vertical: 4.0);
  static const EdgeInsets verticalPaddingAll8 = EdgeInsets.all(8);
}
