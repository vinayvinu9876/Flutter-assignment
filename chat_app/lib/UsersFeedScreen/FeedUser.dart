import 'package:flutter/material.dart';
import 'package:chat_app/util/index.dart';

class FeedUser extends StatefulWidget {
  String imgurl, name, desc, time;
  bool isonline;
  FeedUser(
      {@required this.imgurl,
      @required this.name,
      @required this.desc,
      @required this.time,
      this.isonline = false});
  @override
  State<FeedUser> createState() => _FeedUser();
}

class _FeedUser extends State<FeedUser> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, "/message");
        },
        child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.2))),
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  child: Stack(children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage("${widget.imgurl}"),
                ),
                Visibility(
                    visible: widget.isonline,
                    child: Container(
                        margin: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                          radius: 5,
                          backgroundColor: blue,
                        )))
              ])),
              SizedBox(width: 15),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.name}",
                        style: GoogleFonts.poppins(
                            color: Colors.black, fontSize: 14)),
                    Text("${widget.desc}",
                        style: GoogleFonts.poppins(
                            color: Colors.black.withOpacity(0.3), fontSize: 10))
                  ]),
              Spacer(),
              Text("${widget.time} ago",
                  style: GoogleFonts.poppins(
                      color: Colors.black.withOpacity(0.5), fontSize: 8))
            ],
          ),
        ));
  }
}
