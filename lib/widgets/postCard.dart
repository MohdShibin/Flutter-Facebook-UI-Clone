import 'package:fb/section/ButtonSection.dart';
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
  final String likeCount;
  final String shareCount;
  final String commentCount;

  const PostCard({
    @required this.avatar,
    @required this.publishedAt,
    @required this.avatarName,
    @required this.postTitle,
    @required this.postImage,
    @required this.likeCount,
    @required this.commentCount,
    @required this.shareCount,
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
          ButtonSection(),
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
      height: 45,
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
                displayText(label: likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                displayText(label:commentCount),
                SizedBox(width: 5),
                displayText(label: "Comments"),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: "Shares"),
                SizedBox(width: 10),
                Avatar(displayImage: avatar, displayStatus: false,width: 25,height: 25,),
                IconButton(
                    icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],),
                    onPressed:(){
                      print("Drop down pressed");
                    }
                ),
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
