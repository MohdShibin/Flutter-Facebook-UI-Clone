import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String mutualFriends;

  SuggestionCard({
    @required this.avatar,
    @required this.mutualFriends,
    @required this.name,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 240,
      child: Stack(
        children: [
          suggestionImage(),
          suggestionInfo(),
        ],
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: ClipRRect(
         child: avatar!=null? Image.asset(
          avatar,
          height: 250,
          fit: BoxFit.cover,
        ):SizedBox(),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(18)),
      ),
    );
  }

  Widget suggestionInfo() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(
              width: 1,
              color: Colors.grey[300],
            ),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            )
        ),
        height: 125,
        child: Column(
          children: [
            ListTile(
              title: Text(name !=null ? name:" "),
              subtitle: Text(mutualFriends!=null ? mutualFriends:" "),
            ),
            Container(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButton(
                    buttonAction: () {
                      print("add friend");
                    },
                    buttonIcon: Icons.person_add,
                    buttonBgColor: Colors.blue,
                    buttonTextColor: Colors.white,
                    buttonIconColor: Colors.white,
                    buttonText: "Add Friend",
                  ),
                  blankButton(
                      buttonAction: () {
                        print("Remove");
                      },
                      buttonText: "Remove",
                      buttonTextColor: Colors.black,
                      buttonBgColor: Colors.grey[300]),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget blankButton({
    @required void Function() buttonAction,
    @required Color buttonBgColor,
    @required Color buttonTextColor,
    @required String buttonText,
  }) {
    return FlatButton(
      onPressed: buttonAction,
      child: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      color: buttonBgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  }

  Widget iconButton({
    @required void Function() buttonAction,
    @required IconData buttonIcon,
    @required Color buttonBgColor,
    @required Color buttonTextColor,
    @required Color buttonIconColor,
    @required String buttonText,
  }) {
    return FlatButton.icon(
      icon: Icon(
        buttonIcon,
        color: buttonIconColor,
      ),
      label: Text(buttonText, style: TextStyle(color: buttonTextColor)),
      onPressed: buttonAction,
      color: buttonBgColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))),
    );
  }
}
