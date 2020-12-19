import 'package:flutter/material.dart';
import "StoryUser.dart";

class StoryContainer extends StatefulWidget {
  @override
  State<StoryContainer> createState() => _StoryContainer();
}

class _StoryContainer extends State<StoryContainer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        height: 50,
        width: width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 5),
            StoryUser(
                url:
                    "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                active: true),
            StoryUser(
                url:
                    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
                active: true),
            StoryUser(
                url:
                    "https://cultivatedculture.com/wp-content/uploads/2019/12/LinkedIn-Profile-Picture-Example-Madeline-Mann.jpeg",
                active: true),
            StoryUser(
              url:
                  "https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70",
            ),
            StoryUser(
                url:
                    "https://i1.wp.com/www.alphr.com/wp-content/uploads/2020/05/Zoom-How-to-Set-Profile-Picture.jpg?fit=577%2C320&ssl=1"),
            StoryUser(
                url:
                    "https://cdn.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg")
          ],
        ));
  }
}
