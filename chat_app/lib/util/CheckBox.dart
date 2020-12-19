import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  final Color inactiveBorderColor;
  final Color iconColor;
  final Color activeColor;
  final double width;
  final double height;
  final Function onChange;
  final double iconSize;

  CheckBox({
    this.inactiveBorderColor = Colors.grey,
    this.iconColor = Colors.white,
    this.activeColor = Colors.black,
    this.width = 15,
    this.height = 15,
    this.onChange,
    this.iconSize = 12,
  });

  @override
  State<CheckBox> createState() => _CheckBox(
      inactiveBorderColor: inactiveBorderColor,
      iconColor: iconColor,
      activeColor: activeColor,
      width: width,
      height: height,
      onChange: onChange,
      iconSize: iconSize);
}

class _CheckBox extends State<CheckBox> {
  final Color inactiveBorderColor;
  final Color iconColor;
  final Color activeColor;
  final double width;
  final double height;
  final double iconSize;
  final Function onChange;

  _CheckBox({
    this.inactiveBorderColor = Colors.grey,
    this.iconColor = Colors.white,
    this.activeColor = Colors.black,
    this.width = 15,
    this.height = 15,
    this.iconSize = 12,
    this.onChange,
  });

  bool active = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          setState(() {
            if (onChange != null) onChange(!active);
            active = !active;
          });
        },
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: active ? activeColor : Colors.white,
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                  width: 1, color: active ? activeColor : inactiveBorderColor)),
          child: Visibility(
            visible: active,
            child: Center(
                child: Icon(Icons.done, color: iconColor, size: iconSize)),
          ),
        ));
  }
}
