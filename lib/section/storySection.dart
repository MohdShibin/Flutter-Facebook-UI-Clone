import 'package:fb/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            AvatarPic: "assets/profpic.jpeg",
            Story: "assets/profpic.jpeg",
            LabelText: "Add to Story",
            CreateStoryFlag: true,
          ),
          StoryCard(
            AvatarPic: "assets/dq.jpg",
            Story: "assets/story1.jpg",
            LabelText: "Dulquer Salmaan",
          ),
          StoryCard(
            AvatarPic: "assets/tovino.jpg",
            Story: "assets/story2.jpg",
            LabelText: "Tovino Thomas",
          ),
          StoryCard(
            AvatarPic: "assets/dq.jpg",
            Story: "assets/dq.jpg",
            LabelText: "Dulquer Salmaan",
          ),
          StoryCard(
            AvatarPic: "assets/tovino.jpg",
            Story: "assets/tovino.jpg",
            LabelText: "Tovino Thomas",
          ),
        ],
      ),
    );
  }
}
