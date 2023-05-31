import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    primarySwatch: AppTheme.color.primary,
    textTheme: GoogleFonts.latoTextTheme(),
    scaffoldBackgroundColor: AppTheme.color.neutral.shade300,
  );
  static AppColor color = AppColor();
}
