import 'package:flutter/material.dart';

class AppShadows {
  static final shadow1 = BoxShadow(
      offset: Offset.zero,
      blurRadius: 10,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.25));
  static final shadow2 = BoxShadow(
      offset: Offset(0, 4),
      blurRadius: 10,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.25));
}
