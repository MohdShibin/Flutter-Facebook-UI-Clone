import 'package:flutter/material.dart';

class Avatar extends StatelessWidget{
  final String displayImage;

  Avatar({
    @required this.displayImage,
});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5,right: 5),
          child: ClipRRect(
            child: Image.asset(displayImage, width: 50, height: 50),
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 1.0,
          child:Container(
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }

}