import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:chat_app/util/index.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int activeIndex;
  CustomBottomNavBar({@required this.activeIndex});
  @override
  State<CustomBottomNavBar> createState() =>
      _CustomBottomNavBar(activeIndex: activeIndex);
}

class _CustomBottomNavBar extends State<CustomBottomNavBar> {
  final int activeIndex;
  _CustomBottomNavBar({this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: activeIndex,
      elevation: 5,
      onTap: (int index) {},
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[400],
      unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
      selectedIconTheme: IconThemeData(color: Colors.black),
      selectedLabelStyle:
          GoogleFonts.poppins(color: Colors.black, fontSize: 10),
      showUnselectedLabels: true,
      unselectedLabelStyle:
          GoogleFonts.poppins(color: Colors.grey[400], fontSize: 10),
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: new Icon(Icons.bolt),
          label: "Shop",
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.search),
          label: "Explore",
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.bookmark),
          label: "Brands",
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}
