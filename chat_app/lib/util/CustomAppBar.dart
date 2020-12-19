import 'package:flutter/material.dart';

Widget CustomAppBar(
    {String title, Function onBackTap, bool showBackButton = true}) {
  return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF005EA3),
      leading: showBackButton
          ? IconButton(
              icon: Icon(Icons.chevron_left, color: Colors.white, size: 30),
              onPressed: onBackTap)
          : null,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4), bottomRight: Radius.circular(4))),
      centerTitle: true,
      title: Text("$title",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          )));
}
