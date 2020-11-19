import 'package:flutter/material.dart';
import 'package:neu_clock/presentation/widgets/clock.dart';

class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          IconButton(
            icon: Icon(Icons.settings, color: Theme.of(context).primaryColor),
            onPressed: () => {},
            iconSize: 32,
          )
        ],
      ),
      body: Container(
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 300,
               
                child: Clock(clockFaceSize: 250),
              ),
              Container(
                height: 200,
                child: Center(
                  child: Text('Time List'),
                ),
                color: Colors.amber[400],
              ),
              Expanded(child: Container()),
              Container(
                height: 60,
                child: Center(
                  child: Text('Bottom Button Row'),
                ),
                color: Colors.pink[400],
              )
            ],
          ),
        ),
      ),
    );
  }
}
