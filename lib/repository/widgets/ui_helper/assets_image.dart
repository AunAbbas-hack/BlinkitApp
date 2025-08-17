import 'package:flutter/material.dart';

class UiHelper {
  static customImage({required String img}) {
    return Image.asset("assets/images/$img");
  }

  static customText({
    required String text,
    required Color color,
    required double fontSize,
    required FontWeight fontWeight,
    String? fontFamily,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? "regular",
      ),
    );
  }
}
