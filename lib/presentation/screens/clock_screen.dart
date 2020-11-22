import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neu_clock/models/alarm.dart';
import 'package:neu_clock/presentation/widgets/alarm_list.dart';
import 'package:neu_clock/presentation/widgets/bottom_nav_bar.dart';
import 'package:neu_clock/presentation/widgets/clock.dart';

class ClockScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'Alarm',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: NeumorphicTheme.currentTheme(context).defaultTextColor,
          ),
        ),
        // backgroundColor: Theme.of(context).backgroundColor,
        // elevation: 0,
        actions: [
          NeumorphicButton(
            margin: EdgeInsets.only(top: 4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeumorphicIcon(
                Icons.settings,
                size: 32,
                style: NeumorphicStyle(
                    color:
                        NeumorphicTheme.currentTheme(context).defaultTextColor),
              ),
            ),
            onPressed: () => {},
          )
        ],
      ),
      body: Container(
        // color: Theme.of(context).backgroundColor,
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
                  child: AlarmList(
                      alarms: alarmList()..sort((a, b) => a.comparedTo(b))),
                ),
              ),
              Expanded(child: Container()),
              Container(
                height: 60,
                child: BottomNavBar(),
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
