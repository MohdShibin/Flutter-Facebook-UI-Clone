import 'package:fb/widgets/CircularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/profpic.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: CircularButton(
              buttonIcon: Icons.add,
              buttonAction: () {
                print("Create story");
              },
              iconColor: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "Add to Story",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
