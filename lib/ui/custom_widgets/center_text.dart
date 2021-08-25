import 'package:flutter/material.dart';


class CenterText extends StatelessWidget {
  final String child;
  final TextStyle style;

  const CenterText({this.child, this.style});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        child,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }
}