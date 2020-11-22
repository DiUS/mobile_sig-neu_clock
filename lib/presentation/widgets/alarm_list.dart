import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:neu_clock/models/alarm.dart';

class AlarmList extends StatelessWidget {
  final List<Alarm> alarms;

  const AlarmList({Key key, this.alarms}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: alarms.length,
          itemBuilder: (context, index) => _AlarmCard(alarm: alarms[index])),
    );
  }
}

class _AlarmCard extends StatelessWidget {
  final Alarm alarm;

  const _AlarmCard({Key key, this.alarm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(horizontal: 48, vertical: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              alarm.time.format(context),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: NeumorphicSwitch(
                height: 32,
                  value: alarm.enabled,
                  onChanged: (bool val) => {print('Changed to $val')}),
            ),
          ],
        ),
      ),
    );
  }
}
