import 'package:flutter/material.dart';
import 'package:flutter_tehnician_assignment_uros/constants/constants.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double scaleFactor;

  const TextWidget(
    this.text, {
    super.key,
    this.scaleFactor = 1.0,
  });

  const TextWidget.scaledDown(
    this.text, {
    super.key,
    this.scaleFactor = 0.7,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TypographyConstants.whiteText,
      textScaleFactor: scaleFactor,
    );
  }
}
