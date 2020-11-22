import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _BottomButton(
              icon: Icon(
                Icons.language,
                size: 32,
                color: NeumorphicTheme.currentTheme(context).accentColor,
              ),
              cb: () => print('World Clocks')),
          _BottomButton(
              icon: Icon(
                Icons.alarm,
                size: 32,
                color: NeumorphicTheme.currentTheme(context).accentColor,
              ),
              selected: true,
              cb: () => print('Alarms')),
          _BottomButton(
              icon: Icon(
                Icons.timer,
                size: 32,
                color: NeumorphicTheme.currentTheme(context).accentColor,
              ),
              cb: () => print('World Clocks')),
          _BottomButton(
              icon: Icon(
                Icons.timer,
                size: 32,
                color: NeumorphicTheme.currentTheme(context).accentColor,
              ),
              cb: () => print('World Clocks')),
        ],
      ),
    );
  }
}

class _BottomButton extends StatelessWidget {
  final Icon icon;
  final Function cb;
  final bool selected;

  const _BottomButton(
      {Key key, @required this.icon, @required this.cb, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: cb,
      child: Neumorphic(
        style: selected
            ? NeumorphicStyle(
              shape: NeumorphicShape.concave,
              surfaceIntensity: 0.5,
              intensity: 0.25,
              depth: 8,
                border: NeumorphicBorder(
                color: NeumorphicTheme.currentTheme(context).accentColor,
                width: 4,
              ))
            : null,
        child: Container(
          // margin: EdgeInsets.all(4),
          height: 40,
          width: 40,
          child: icon,
        ),
      ),
    );
  }
}
