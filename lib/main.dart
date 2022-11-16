import 'package:flutter/material.dart';
import 'package:tweets_flutter/tweet_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 75,
          centerTitle: true,
          title: Text("Twitter"),
          ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // first tweet card 
                TweetCard(
                  image: "https://static.wikia.nocookie.net/p__/images/2/25/Arthur-weasley-1-.jpg/revision/latest?cb=20170123000138&path-prefix=protagonist",
                  name: "Arthur Weasley ", 
                  username: "@ArthurWeasley", 
                  body: "What exactly is the function of a rubber duck?", 
                  time: "10:45 AM", 
                  date: "2022-11-16", 
                  device: "Twitter for Wizards",
                  footerColor: Colors.grey[900],
                  likesCounter: "56,353",
                  retweetsCounter: "10,435",
                  commentsCounter: "1,674",
                  ),
          
                // second tweet card 
                TweetCard(
                  image: "https://ichef.bbci.co.uk/news/976/cpsprodpb/17DA4/production/_127400779_muskgetty.png",
                  name: "Elon Musk", 
                  username: "@elonmusk", 
                  body: "Comedy is now legal in twitter.", 
                  time: "3:23 PM", 
                  date: "2022-11-16", 
                  device: "Twitter for iPhone",
                  likesCounter: "180",
                  retweetsCounter: "65",
                  commentsCounter: "13",
                  footerColor: Colors.cyan,
                  ),
                
                // third tweet card 
                TweetCard(
                  image: "https://img.freepik.com/free-photo/half-profile-image-beautiful-young-woman-with-bob-hairdo-posing-gazing-with-eyes-full-reproach-suspicion-human-facial-expressions-emotions-reaction-feelings_343059-4660.jpg?w=2000",
                  name: "Nadia M. ", 
                  username: "@NadiaReal", 
                  body: "I've been using Vim for about two years now, mostly because I can't figure out how to exit it.", 
                  time: "6:23 PM", 
                  date: "2022-11-15", 
                  device: "Twitter for Android",
                  likesCounter: "204",
                  retweetsCounter: "106",
                  commentsCounter: "43",
                  footerColor: Colors.green,
                  ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
