import 'package:flutter/material.dart';

class VideoMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        height: 150,
        width: 150,
        padding: EdgeInsets.only(top: 5, right: 5),
        child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://i.hurimg.com/i/hdn/75/0x0/5da425cc0f25441cf4279f1d.jpg"))),
            child: Center(
                child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[400].withOpacity(0.7),
              child: Icon(Icons.play_arrow, color: Colors.white),
            ))));
  }
}
