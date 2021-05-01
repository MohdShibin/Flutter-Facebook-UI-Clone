import 'package:fb/widgets/blueTick.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String publishedAt;
  final String avatarName;
  final String postTitle;
  final String postImage;
  final bool showBlueTick;

  const PostCard({
    @required this.avatar,
    @required this.publishedAt,
    @required this.avatarName,
    @required this.postTitle,
    @required this.postImage,
    this.showBlueTick = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, top: 5),
      child: Image.asset(
        postImage,
      ),
    );
  }

  Widget titleSection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        postTitle == null ? " " : postTitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 40,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 15,
                  width: 15,
                  child: Icon(
                    Icons.thumb_up,
                    size: 10,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 5),
                displayText(label: "10k"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label:"1k"),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: "500"),
                SizedBox(width: 5),
                displayText(label: "Shares"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(avatarName),
          SizedBox(width: 10),
          showBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? " " : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("open more menue");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }

  Widget displayText({@required String label}) {
    return Text(label, style: TextStyle(color: Colors.grey[700]));
  }
}
