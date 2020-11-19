import 'package:flutter/material.dart';

class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AppBar(
    title: Text(
      'Alarm',
      style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Theme.of(context).primaryColor),
    ),
    backgroundColor: Theme.of(context).backgroundColor,
    elevation: 0,
actions: [
  IconButton(icon: Icon(Icons.settings, color: Theme.of(context).primaryColor), onPressed: () => {}, iconSize: 32,)
],
          ),
        ),
        body: Container(
    color: Theme.of(context).backgroundColor,
    child: SafeArea(
          child: Center(
        child: Text('Neu Clock'),
      ),
    ),
        ),
      );
  }
}
