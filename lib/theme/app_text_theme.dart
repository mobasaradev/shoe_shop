import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();
  static final _textStyle = GoogleFonts.inter();

  static TextTheme common = TextTheme(
    headlineLarge: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    headlineMedium: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 28,
    ),
    headlineSmall: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    titleLarge: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    titleMedium: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    titleSmall: _textStyle.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    bodyLarge: _textStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: _textStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: _textStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  );
}
