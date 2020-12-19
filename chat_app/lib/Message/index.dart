import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';
import 'package:bubble/bubble.dart';
import "AudioMessage.dart";
import "PictureMessage.dart";
import "VideoMessage.dart";
import "MessageSenderWidget.dart";

class Message extends StatefulWidget {
  @override
  State<Message> createState() => _Message();
}

class _Message extends State<Message> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/usersfeed");
            },
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Martha", style: GoogleFonts.poppins(color: Colors.black)),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              child: ListView(
                children: [
                  Container(
                      width: width,
                      height: 35,
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: Center(
                          child: Text("Today",
                              style: GoogleFonts.poppins(
                                  color: Colors.grey, fontSize: 12)))),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topRight,
                    nipWidth: 8,
                    nipHeight: 10,
                    nip: BubbleNip.rightTop,
                    color: blue,
                    child: Text('Hello, World!',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topLeft,
                    nipWidth: 8,
                    nipHeight: 10,
                    nip: BubbleNip.leftTop,
                    color: Colors.grey[300],
                    child: Text('Hi, developer!'),
                  ),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topRight,
                    nipWidth: 10,
                    nipHeight: 10,
                    nip: BubbleNip.rightTop,
                    color: blue,
                    child: Text('How are you ?',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ),
                  Bubble(
                    margin: BubbleEdges.only(top: 10),
                    alignment: Alignment.topLeft,
                    nipWidth: 8,
                    nipHeight: 10,
                    nip: BubbleNip.leftTop,
                    color: Colors.grey[300],
                    child: Text('Great!'),
                  ),
                  PictureMessage(),
                  AudioMessage(),
                  VideoMessage(),
                ],
              ),
            )),
            MessageSenderWidget(),
          ],
        ),
      ),
    );
  }
}
