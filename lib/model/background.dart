import 'package:flutter/material.dart';

class AppGradient {
  static const LinearGradient blueWhiteBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.white,
      Color.fromARGB(255, 100, 150, 200),
      Color.fromARGB(255, 5, 84, 149), 
    ],
    stops: [0.2, 0.6, 1.0], 
  );
}
