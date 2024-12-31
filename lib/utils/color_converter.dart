import 'package:flutter/material.dart';

// custom color converter for parsing freeze classes
class ColorConverter {
  static Color fromJson(int json) {
    return Color(json);
  }

  static int toJson(Color object) {
    // ignore: deprecated_member_use
    return object.value;
  }
}
