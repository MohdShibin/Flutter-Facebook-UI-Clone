import 'package:fb/section/headerButtonSection.dart';
import 'package:fb/section/roomSection.dart';
import 'package:fb/section/statusSection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb/widgets/appBarButton.dart';

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
            AppBarButton(buttonIcon: Icons.search, buttonAction: (){
              print("search");
            }),
            AppBarButton(buttonIcon: Icons.chat, buttonAction: (){
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
            HeaderButtonSection(),
            FbDivider(thick: 10),
            RoomSection(),
            FbDivider(thick: 10),
          ],
        ),
      ),
    );
  }
}
