import 'package:flutter/material.dart';

class AppColor {
  static const int _primary = 0xFF00529C;
  MaterialColor primary = const MaterialColor(_primary, {
    50: Color(0xFFF3F7FB),
    100: Color(0xFFE6EEF6),
    200: Color(0xFFC0D4E7),
    300: Color(0xFF97B9D7),
    400: Color(0xFF4D86BA),
    500: Color(_primary),
    600: Color(0xFF00498B),
    700: Color(0xFF00325E),
    800: Color(0xFF002547),
    900: Color(0xFF00182E),
  });

  static const int _secondary = 0xFFF27123;
  MaterialColor secondary = const MaterialColor(_secondary, {
    50: Color(0xFFFFF8F4),
    100: Color(0xFFFEF1E9),
    200: Color(0xFFFCDCC8),
    300: Color(0xFFFAC5A5),
    400: Color(0xFFF69C65),
    500: Color(_secondary),
    600: Color(0xFFD86520),
    700: Color(0xFF924415),
    800: Color(0xFF6D3310),
    900: Color(0xFF47210B),
  });

  static const int _success = 0xFF66BB6A;
  MaterialColor success = const MaterialColor(_success, {
    50: Color(0xFFF8FCF8),
    100: Color(0xFFF0F9F1),
    200: Color(0xFFD9EEDA),
    300: Color(0xFFC1E4C2),
    400: Color(0xFF94D097),
    500: Color(_success),
    600: Color(0xFF5BA75F),
    700: Color(0xFF3E7140),
    800: Color(0xFF2E5530),
    900: Color(0xFF1E371F),
  });

  static const int _warning = 0xFFFFA726;
  MaterialColor warning = const MaterialColor(_warning, {
    50: Color(0xFFFFFBF5),
    100: Color(0xFFFFF7EA),
    200: Color(0xFFFFE9C9),
    300: Color(0xFFFFDBA7),
    400: Color(0xFFFFC268),
    500: Color(_warning),
    600: Color(0xFFE39522),
    700: Color(0xFF996517),
    800: Color(0xFF734C12),
    900: Color(0xFF4A310C),
  });

  static const int _error = 0xFFF44336;
  MaterialColor error = const MaterialColor(_error, {
    50: Color(0xFFFFF6F5),
    100: Color(0xFFFEEDEB),
    200: Color(0xFFFDD0CD),
    300: Color(0xFFFBB2AD),
    400: Color(0xFFF87C73),
    500: Color(_error),
    600: Color(0xFFDA3C31),
    700: Color(0xFF932921),
    800: Color(0xFF6E1F19),
    900: Color(0xFF471410),
  });

  static const int _neutral = 0xFFBDBDBD;
  static List<Color> neutralColor = const [
    Color(0xFFFFFFFF),
    Color(0xFFFAFAFA),
    Color(0xFFF2F2F2),
    Color(0xFFE0E0E0),
    Color(_neutral),
    Color(0xFF828282),
    Color(0xFF4A4A4A),
    Color(0xFF333333),
    Color(0xFF000000),
  ];

  void reverseNeutralColor() {
    neutralColor = neutralColor.reversed.toList();
    neutral = MaterialColor(_neutral, {
      100: neutralColor[0],
      200: neutralColor[1],
      300: neutralColor[2],
      400: neutralColor[3],
      500: neutralColor[4],
      600: neutralColor[5],
      700: neutralColor[6],
      800: neutralColor[7],
      900: neutralColor[8],
    });
  }

  MaterialColor neutral = MaterialColor(_neutral, {
    100: neutralColor[0],
    200: neutralColor[1],
    300: neutralColor[2],
    400: neutralColor[3],
    500: neutralColor[4],
    600: neutralColor[5],
    700: neutralColor[6],
    800: neutralColor[7],
    900: neutralColor[8],
  });
}
