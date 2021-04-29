import 'package:fb/widgets/blueTick.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String publishedAt;
  final String avatarName;

  const PostCard({
    @required this.avatar,
    @required this.publishedAt,
    @required this.avatarName,
  });



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(
              displayImage: avatar,
              displayStatus: false,
            ),
            title: Row(
              children: [
                Text(avatarName),
                SizedBox(width: 10),
                BlueTick(),
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
              onPressed: (){
                print("open more menue");
              },
              icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
            ),
          ),
        ],
      ),
    );
  }
}
