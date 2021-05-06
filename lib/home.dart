import 'package:fb/section/ButtonSection.dart';
import 'package:fb/section/roomSection.dart';
import 'package:fb/section/statusSection.dart';
import 'package:fb/section/storySection.dart';
import 'package:fb/widgets/postCard.dart';
import 'package:flutter/material.dart';
import 'package:fb/widgets/CircularButton.dart';

class Home extends StatelessWidget {

  Widget FbDivider ({
  @required double thick,
  }){
    return Divider(
    thickness: thick,
    color: Colors.grey[300],
);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            CircularButton(buttonIcon: Icons.search, buttonAction: (){
              print("search");
            }),
            CircularButton(buttonIcon: Icons.chat, buttonAction: (){
              print("messenger");
            }),

          ],
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            StatusSection(),
            FbDivider(thick: 1),
            ButtonSection(isHeader: true),
            FbDivider(thick: 10),
            RoomSection(),
            FbDivider(thick: 10),
            StorySection(),
            FbDivider(thick: 10),
            PostCard(
              avatar: "assets/dq.jpg",
              publishedAt: "5h",
              avatarName: "Dulquer Salmaan",
              postTitle: "happy",
              postImage: "assets/story1.jpg",
              showBlueTick: true,
              likeCount: "12K",
              commentCount: "2K",
              shareCount: "1k",
            ),
            FbDivider(thick: 10),
            PostCard(
              avatar: "assets/tovino.jpg",
              publishedAt: "6h",
              avatarName: "Tovino Thomas",
              postImage: "assets/tovino.jpg",
              showBlueTick: true,
              likeCount: "14K",
              commentCount: "5K",
              shareCount: "3k",
            ),
          ],
        ),
      ),
    );
  }
}
