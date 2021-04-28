import 'package:fb/widgets/blueTick.dart';
import 'package:flutter/material.dart';

import 'avatar.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(
              displayImage: "assets/dq.jpg",
              displayStatus: false,
            ),
            title: Row(
              children: [
                Text("dq"),
                SizedBox(width: 10),
                BlueTick(),
              ],
            ),
            subtitle: Row(
              children: [
                Text("5h"),
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
