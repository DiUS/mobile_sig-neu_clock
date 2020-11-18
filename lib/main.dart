import 'package:flutter/material.dart';
import 'package:neu_clock/core/theme/app_theme.dart';

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
      home: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Center(
          child: Text('Neu Clock'),
        ),
      ),
    );
  }
}
