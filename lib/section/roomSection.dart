import 'package:fb/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget{

  Widget createRoomButtton() {
    return Container(
      padding: EdgeInsets.only(left: 5,right: 5),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(color: Colors.blue[100], width: 2),
        onPressed: () {
          print("chatroom");
        },
        icon: Icon(Icons.video_call, color: Colors.purple,),
        label: Text("Create \nRoom", style: TextStyle(color: Colors.blue),),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(

        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButtton(),
          Avatar(displayImage: "assets/dq.jpg",displayStatus:true),
          Avatar(displayImage: "assets/tovino.jpg",displayStatus:true),
          Avatar(displayImage: "assets/dq.jpg",displayStatus:true),
          Avatar(displayImage: "assets/tovino.jpg",displayStatus:true),
          Avatar(displayImage: "assets/dq.jpg",displayStatus:true),
          Avatar(displayImage: "assets/tovino.jpg",displayStatus:true),
        ],
      ),
    );
  }

}