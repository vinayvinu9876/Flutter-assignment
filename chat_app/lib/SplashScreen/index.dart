import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  Timer _timer;
  int _start = 3; // seconds

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushNamed(context, "/usersfeed");
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xFF005EA3),
        body: Container(
          height: height,
          width: width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_outlined,
                  color: Colors.white,
                  size: 50,
                ),
                SizedBox(height: 10),
                Text("Let's Just Chat",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 18))
              ]),
        ));
  }
}
