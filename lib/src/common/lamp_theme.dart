import 'package:flutter/material.dart';

class LampTheme {
  LampTheme._();

  static const ColorScheme _colorSchemeLight = ColorScheme.light(
    primary: Color(0xFF546454),
    secondary: Color(0xFFa0a963),
  );

  static ThemeData get light {
    return ThemeData.from(
      colorScheme: _colorSchemeLight,
      useMaterial3: true,
    );
  }
}
