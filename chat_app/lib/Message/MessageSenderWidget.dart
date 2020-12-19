import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';

class MessageSenderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 0.2, color: Colors.black))),
      child: Container(
          child: Row(children: [
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.grey[400].withOpacity(1),
          child: Icon(Icons.add, color: Colors.white),
        ),
        SizedBox(width: 10),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(top: 15, left: 10, right: 5),
              hintText: "Write Message",
              hintStyle:
                  GoogleFonts.poppins(color: Colors.black45, fontSize: 12),
              fillColor: Colors.grey[300].withOpacity(0.7),
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15))),
        )),
        SizedBox(width: 10),
        CircleAvatar(
          radius: 15,
          backgroundColor: Colors.indigo[900],
          child: Icon(Icons.send, color: Colors.white, size: 16),
        )
      ])),
    );
  }
}
