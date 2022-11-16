import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tweets_flutter/icon_component.dart';

class TweetCard extends StatelessWidget {
  TweetCard({
    super.key,
    required this.image,
    required this.name,
    required this.username,
    required this.body,
    required this.time,
    required this.date,
    required this.device,
    this.retweetsCounter = "0",
    this.likesCounter = "0",
    this.commentsCounter = "0",
    this.footerColor,
  });

  final String image;
  final String name;
  final String username;
  final String body;
  final String time;
  final String date;
  final String device;
  final IconData likesIcon = Icons.favorite_border_outlined;
  final String likesCounter;
  final IconData retweetsIcon = Icons.repeat_rounded;
  final String retweetsCounter;
  final IconData commentsIcon = Icons.mode_comment_outlined;
  final String commentsCounter;
  Color? footerColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Image here inside the CircleAvatar widget to make it a circle
                CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(image),
                ),

                // We use a sizedbox here to make a space between the image and text
                SizedBox(
                  width: 15,
                ),

                // this column houses the name and username of the tweet
                Column(
                  // column by default sets the crossAxis to center
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      username,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            // Sizedbox here to make some space between user information and the content of the tweet
            SizedBox(
              height: 20,
            ),

            Text(
              body,
              style: TextStyle(
                fontSize: 22,
              ),
            ),

            SizedBox(
              height: 15,
            ),
            // Row to contain tweet information
            Row(
              children: [
                Text(
                  "${time} . ",
                  style: TextStyle(
                    fontSize: 17.5,
                  ),
                ),
                Text(
                  "${date} . ",
                  style: TextStyle(
                    fontSize: 17.5,
                  ),
                ),
                Text(
                  device,
                  style: TextStyle(fontSize: 17.5, color: footerColor),
                ),
              ],
            ),

            SizedBox(
              height: 15,
            ),

            // Row that houses the icons at the bottom of the tweet
            Row(
              children: [
                // Custom widget that contains the icon and the counter of the icon
                IconContainer(
                  icon: likesIcon,
                  counter: likesCounter,
                  iconColor: Colors.red,
                ),
                IconContainer(
                  icon: retweetsIcon,
                  counter: retweetsCounter,
                  iconColor: Colors.green,
                ),
                // Expanded was used here to take all the space between the two icons above and the one below
                Expanded(
                  child: SizedBox(
                    width: 10,
                  ),
                ),

                IconContainer(
                  icon: commentsIcon,
                  counter: commentsCounter,
                  iconColor: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
