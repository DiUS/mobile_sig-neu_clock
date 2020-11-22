import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Clock extends StatelessWidget {
  final double clockFaceSize;

  const Clock({Key key, this.clockFaceSize = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _FlatCircleClockFace(size: clockFaceSize),
    );
  }
}

class _FlatCircleClockFace extends StatelessWidget {
  final double size;

  const _FlatCircleClockFace({Key key, this.size = 200}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final innercircleDiameter = 0.625 * size;
    final innerCircleRadius = 0.5 * innercircleDiameter;
    return Container(
      height: size,
      width: size,
      child: Stack(
        children: [
          //outer circle
          _ClockCircle(
            height: size,
          ),
          //inner circle
          _ClockCircle(
            height: innercircleDiameter,
          ),
          // minute hand
          Align(
            alignment: Alignment(0.0, -0.5),
            child: Container(
              height: innerCircleRadius + 24,
              width: 3,
              color: Colors.brown[700],
            ),
          ),
          // hour hand
          Align(
            alignment: Alignment(0.4, 0.0),
            child: Container(
              height: 3,
              width: innerCircleRadius + 16,
              color: Colors.grey[400],
            ),
          ),
          // ticks
          // 12
          Align(
            alignment: Alignment.topCenter,
            child: Container(height: 10, width: 1, color: Colors.black),
          ),
          // 3
          Align(
            alignment: Alignment.centerRight,
            child: Container(height: 1, width: 10, color: Colors.black),
          ),
          // 6
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(height: 10, width: 1, color: Colors.black),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(height: 1, width: 10, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class _ClockCircle extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  const _ClockCircle(
      {Key key, this.height, this.width, this.color = Colors.white30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.circle()
            ),
              child: Container(
            height: height,
            width: width ?? height,
            decoration: BoxDecoration(shape: BoxShape.circle, color: color)),
      ),
    );
  }
}
