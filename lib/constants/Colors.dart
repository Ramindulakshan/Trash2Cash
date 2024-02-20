import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF3366FF);
  static const Color accentColor = Color.fromARGB(255, 41, 87, 120);
  static const Color grayColor = Color.fromARGB(255, 98, 103, 106);
  static const Color textColor = Color.fromARGB(255, 41, 87, 120);
  static const Color textGaryColor = Color.fromARGB(255, 112, 112, 112);
  static const Color iconColor = Color.fromARGB(255, 41, 87, 120);
  static const Color backgroundColor = Color(0xFFFFFFFF);

  static const MaterialColor primaryMaterialColor = MaterialColor(
    0xFF3366FF,
    <int, Color>{
      50: Color(0xFFE3F2FD),
      100: Color(0xFFBBDEFB),
      200: Color(0xFF90CAF9),
      300: Color(0xFF64B5F6),
      400: Color(0xFF42A5F5),
      500: Color(0xFF2196F3),
      600: Color(0xFF1E88E5),
      700: Color(0xFF1976D2),
      800: Color(0xFF1565C0),
      900: Color(0xFF0D47A1),
    },
  );
}
