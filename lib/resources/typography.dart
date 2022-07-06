import 'package:flutter/material.dart';

abstract class AppTypography {
  const AppTypography._();

  static TextStyle b24 = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle b20 = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static TextStyle r20 = const TextStyle(
    fontSize: 20,
  );

  static TextStyle b18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static TextStyle r16 = const TextStyle(
    fontSize: 16,
  );
}
