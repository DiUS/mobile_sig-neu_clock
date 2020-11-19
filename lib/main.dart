import 'package:flutter/material.dart';
import 'package:neu_clock/core/theme/app_theme.dart';
import 'package:neu_clock/presentation/screens/clock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neu Clock',
      theme: appThemeData(),
      home: ClockScreen(),
    );
  }
}
