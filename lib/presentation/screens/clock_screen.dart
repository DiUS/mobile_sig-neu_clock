import 'package:flutter/material.dart';
import 'package:neu_clock/models/alarm.dart';
import 'package:neu_clock/presentation/widgets/alarm_list.dart';
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
                  child: AlarmList(alarms: alarmList()..sort((a,b) => a.comparedTo(b))),
                ),
                
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

 List<Alarm> alarmList() => <Alarm>[
   Alarm(time: TimeOfDay(hour: 6, minute: 25), enabled: true),
   Alarm(time: TimeOfDay(hour: 19, minute: 15), enabled: false),
   Alarm(time: TimeOfDay(hour: 7, minute: 45), enabled: true),
   
 ];
