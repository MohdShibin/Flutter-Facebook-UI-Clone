import 'package:fb/widgets/CircularButton.dart';
import 'package:fb/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String LabelText;
  final String Story;
  final String AvatarPic;
  final bool CreateStoryFlag;

  const StoryCard({
    @required this.LabelText,
    @required this.Story,
    @required this.AvatarPic,
    this.CreateStoryFlag=false,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Story),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: CreateStoryFlag ? CircularButton(
              buttonIcon: Icons.add,
              iconColor: Colors.blue,
              buttonAction: () {
                print("Create story");
              },
            ) : Avatar (
              displayImage : AvatarPic,
              displayStatus: false,
              displayBorder: true,
              width: 40,
              height: 40,
            )
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              LabelText != null ? LabelText: "N/A",
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
