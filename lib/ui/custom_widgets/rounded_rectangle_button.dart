import 'package:flutter/material.dart';
import 'package:sukin/utilities/constant.dart';


class RoundedRectangleButton extends StatelessWidget {
  final Widget child;
  final Function onPress;
  final Color color;
  final bool outlined;
  final double width;

  const RoundedRectangleButton({this.child, this.onPress, this.color, this.outlined, this.width});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(

      constraints: BoxConstraints(
          minWidth: width?? 220
      ),
      onPressed: onPress,
      disabledElevation: 0,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: child,
      ),
      shape: outlined?
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: kPrimaryColor,
          width: 2.0
        )
      ): RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      fillColor: outlined? Colors.transparent: color,
    );
  }
}