import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fb/widgets/appBarButton.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
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
      ),
    );
  }
}
