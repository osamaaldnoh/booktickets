import 'package:flutter/material.dart';

import 'app_layout.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3d3d3d);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColore = const Color(0xFFd2bdb6);
  static TextStyle textStyle = TextStyle(
    fontSize: AppLayout.getHeight(16),
    color: textColor,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = TextStyle(
    fontSize: AppLayout.getHeight(26),
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle2 = TextStyle(
    fontSize: AppLayout.getHeight(21),
    color: textColor,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headLineStyle3 = TextStyle(
    fontSize: AppLayout.getHeight(17),
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle4 = TextStyle(
    fontSize: AppLayout.getHeight(14),
    color: Colors.grey.shade500,
    fontWeight: FontWeight.bold,
  );
}
