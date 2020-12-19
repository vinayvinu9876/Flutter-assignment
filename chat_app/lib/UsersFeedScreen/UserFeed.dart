import 'package:flutter/material.dart';
import "FeedUser.dart";

class UserFeed extends StatefulWidget {
  @override
  State<UserFeed> createState() => _UserFeed();
}

class _UserFeed extends State<UserFeed> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          FeedUser(
            imgurl:
                "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg",
            name: "Hannah Chavez",
            desc: "Sent you a photo",
            time: "3m",
            isonline: true,
          ),
          FeedUser(
            imgurl:
                "https://www.attractivepartners.co.uk/wp-content/uploads/2017/06/profile.jpg",
            name: "Ann Bates",
            desc: "Replied to your story",
            time: "5m",
            isonline: true,
          ),
          FeedUser(
            imgurl: "https://miro.medium.com/max/785/0*Ggt-XwliwAO6QURi.jpg",
            name: "Martha Grant",
            desc: "Would you mind sharing the presets ?",
            time: "7m",
          ),
          FeedUser(
            imgurl:
                "https://st.depositphotos.com/1779253/5140/v/600/depositphotos_51405259-stock-illustration-male-avatar-profile-picture-use.jpg",
            name: "Alexander Scott",
            desc: "Shared your photo on his story",
            time: "11m",
            isonline: true,
          ),
          FeedUser(
            imgurl:
                "https://cdn.business2community.com/wp-content/uploads/2014/04/profile-picture-300x300.jpg",
            name: "Bretty Lynch",
            desc: "Sent you a video",
            time: "20m",
          ),
          FeedUser(
            imgurl:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGqeiMvcMA8ATx6McIgv0QgGq9njL6_9Q9Ww&usqp=CAU",
            name: "Debra Martin",
            desc: "Awesome Thanks for this!",
            time: "21m",
          ),
          FeedUser(
            imgurl:
                "https://123wpstatus.com/wp-content/uploads/2020/04/cute-profile-pictures.jpg?189db0&189db0",
            name: "Keith Mills",
            desc: "Working on it. Would you help ?",
            time: "30m",
          ),
          FeedUser(
            imgurl:
                "https://1.bp.blogspot.com/-Iva2pGGOgvA/URFRgyLpvBI/AAAAAAAAF5A/5NRp1f9kJyE/s1600/564508_417431584993094_399747942_n.jpg",
            name: "Steve Gates",
            desc: "Awesome working on the topic!",
            time: "4d",
          ),
          FeedUser(
            imgurl:
                "https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg",
            name: "Hannah Chavez",
            desc: "Sent you a photo",
            time: "3m",
            isonline: true,
          ),
          FeedUser(
            imgurl:
                "https://www.attractivepartners.co.uk/wp-content/uploads/2017/06/profile.jpg",
            name: "Ann Bates",
            desc: "Replied to your story",
            time: "5m",
            isonline: true,
          ),
        ]));
  }
}
