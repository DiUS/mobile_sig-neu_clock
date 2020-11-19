import 'package:flutter/material.dart';

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
                color: Colors.blue[400],
                child: Center(
                  child: Text('ClockFace'),
                ),
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
