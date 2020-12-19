import 'package:flutter/material.dart';

class StoryUser extends StatefulWidget {
  String url;
  bool active;
  StoryUser({@required this.url, this.active = false});
  @override
  State<StoryUser> createState() => _StoryUser();
}

class _StoryUser extends State<StoryUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10, right: 5),
        child: Stack(children: [
          Container(
              alignment: Alignment.center,
              child: CircleAvatar(
                  backgroundColor: widget.active ? Colors.indigo : Colors.grey,
                  radius: 25,
                  child: Center(
                      child: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.white,
                          child: Center(
                              child: CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage("${widget.url}"),
                          )))))),
          Visibility(
              visible: widget.active,
              child: Container(
                  margin: EdgeInsets.only(left: 35),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.indigo,
                  )))
        ]));
  }
}
