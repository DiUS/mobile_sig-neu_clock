import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _BottomButton(
            icon: Icon(
              Icons.language,
              size: 32,
              color: Theme.of(context).accentColor,
            ),
            cb: () => print('World Clocks')),
        _BottomButton(
            icon: Icon(
              Icons.alarm,
              size: 32,
              color: Theme.of(context).accentColor,
            ),
            selected: true,
            cb: () => print('Alarms')),
        _BottomButton(
            icon: Icon(
              Icons.timer,
              size: 32,
              color: Theme.of(context).accentColor,
            ),
            cb: () => print('World Clocks')),
        _BottomButton(
            icon: Icon(
              Icons.timer,
              size: 32,
              color: Theme.of(context).accentColor,
            ),
            cb: () => print('World Clocks')),
      ],
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
      child: Container(
        // margin: EdgeInsets.all(4),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            border:
                selected ? Border.all(color: Theme.of(context).accentColor, width: 4) : null,
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).backgroundColor),
        child: icon,
      ),
    );
  }
}
