import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';

class AudioMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        height: 60,
        width: 200,
        padding: EdgeInsets.all(5),
        child: Container(
          height: 60,
          width: 200,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey[300], borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                  radius: 12,
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 18)),
              SizedBox(width: 3),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(height: 10),
                    Container(
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("0:00", style: GoogleFonts.poppins(fontSize: 10)),
                        Text("2:30", style: GoogleFonts.poppins(fontSize: 10))
                      ],
                    ))
                  ]))
            ],
          ),
        ));
  }
}
