import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neu_clock/presentation/screens/clock_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: 'Neu Clock',
    
      theme: NeumorphicThemeData(
        baseColor: Color(0xFFEFEAEA),
        accentColor: Color(0xFFB9ABAB),
        defaultTextColor: Color(0xFF806A6A),
        lightSource: LightSource.topLeft,
        depth: 10,
        intensity: 0.7,
      ),
      home: ClockScreen(),
    );
  }
}
