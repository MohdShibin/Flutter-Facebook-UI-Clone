import 'package:fb/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: Column(
        children: [
          ListTile(
            leading: Text(
              "People You May Know"
            ),
            trailing: IconButton(
              onPressed: (){
                print("more clicked");
              },
              icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
            ),
          ),
          Container(
            height: 320,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  avatar: "assets/bhasi.jpg",
                  mutualFriends: "4 mutual Friends",
                  name: "Sreenath Bhasi",
                ),
                SuggestionCard(
                  avatar: "assets/nivin.jpg",
                  mutualFriends: "8 mutual Friends",
                  name: "Nivin Pauly",
                ),
                SuggestionCard(
                  avatar: "assets/bhasi.jpg",
                  mutualFriends: "4 mutual Friends",
                  name: "Sreenath Bhasi",
                ),
                SuggestionCard(
                  avatar: "assets/nivin.jpg",
                  mutualFriends: "8 mutual Friends",
                  name: "Nivin Pauly",
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }


}