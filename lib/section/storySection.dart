import 'package:fb/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(),
        ],
      ),
    );
  }

}