import 'package:flutter/material.dart';

class PictureMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 150,
      width: 150,
      padding: EdgeInsets.all(5),
      child: Container(
        height: 150,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.homecareinsight.co.uk/wp-content/uploads/2020/07/connected-technology.jpg"))),
      ),
    );
  }
}
