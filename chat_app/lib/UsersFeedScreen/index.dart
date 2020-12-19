import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';
import "StoryContainer.dart";
import "UserFeed.dart";

class UsersFeedScreen extends StatefulWidget {
  @override
  State<UsersFeedScreen> createState() => _UsersFeedScreen();
}

class _UsersFeedScreen extends State<UsersFeedScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            height: height,
            width: width,
            child: ListView(children: [
              Container(
                  padding: EdgeInsets.all(15),
                  child: Text("Favorite",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18))),
              StoryContainer(),
              SizedBox(height: 15),
              UserFeed(),
            ])));
  }
}
