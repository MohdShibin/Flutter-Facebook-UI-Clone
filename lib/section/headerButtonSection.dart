import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {

  Widget verticalDivider=VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );

  Widget headerButton({
    @required String buttonText,
    @required IconData buttonIcon,
    @required Color buttonColor,
    @required void Function() buttonAction,
  }) {
    return FlatButton.icon(
        onPressed: buttonAction,
        label: Text(buttonText),
        icon: Icon(buttonIcon, color: buttonColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(buttonText: "Live",
              buttonIcon: Icons.video_call,
              buttonColor: Colors.red,
              buttonAction : (){
                print("Live");
              }
          ),
          verticalDivider,
          headerButton(buttonText: "Photo",
              buttonIcon: Icons.photo_library,
              buttonColor: Colors.green,
              buttonAction : (){
                print("Photo ");
              }
          ),
          verticalDivider,
          headerButton(buttonText: "Room",
              buttonIcon: Icons.video_call,
              buttonColor: Colors.purple,
              buttonAction : (){
                print("Room ");
              }
          ),
        ],
      ),
    );
  }

}