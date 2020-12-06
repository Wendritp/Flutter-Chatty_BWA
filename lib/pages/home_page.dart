import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/chat_tile.dart';
import 'chat_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ChatPage()));
          },
          child: Icon(
            Icons.add,
            size: 28,
          ),
          backgroundColor: greenColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Color(0xff1F8DF5),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile_pic.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Sabrina Carpenter",
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Travel Freelancer",
                  style: TextStyle(fontSize: 16, color: lightBlueColor),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Friends",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Ilham Kurniawan',
                        text: 'Sorry, you’re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2.30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Youth of Pancasila',
                        text: 'Lets play Dota...',
                        time: '3.10',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Ormas Family',
                        text: 'Are you ok HRS?..',
                        time: '7.11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'People Power',
                        text: 'the earth is flat my fr..',
                        time: '6.10',
                        unread: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
